module Codec.Wuffs
  ( readImageWithMetadata,
    decodeImageWithMetadata,
    wuffsVersion,
  )
where

import Codec.Picture hiding (decodeImageWithMetadata, readImageWithMetadata)
import Codec.Wuffs.Bindings.Generated qualified as C
import Codec.Wuffs.Bindings.Generated.Safe qualified as C
import Control.Exception
import Data.ByteString qualified as BS
import Data.ByteString.Unsafe qualified as BSU (unsafeUseAsCStringLen)
import Data.Map qualified as M
import Data.Vector.Storable qualified as VS
import Data.Vector.Storable.Mutable qualified as MVS
import Data.Word
import Foreign qualified
import Foreign.C.ConstPtr (ConstPtr (..))
import Foreign.C.String qualified as Foreign
import HsBindgen.Runtime.Support qualified as Bindgen
import Prelude

newtype Metadata = Metadata
  { metadataBlocks :: M.Map Word32 MetadataBlock
  }
  deriving (Show, Eq)

data MetadataBlock = MetadataBlock
  { metadataBlockType :: MetadataType,
    metadataBlockContentType :: String,
    metadataBlockData :: BS.ByteString
  }
  deriving (Show, Eq)

data MetadataType = Exif | Mime | OtherMetadataType String
  deriving (Show, Eq)

readImageWithMetadata :: FilePath -> IO (Either String (DynamicImage, Metadata))
readImageWithMetadata filePath = BS.readFile filePath >>= decodeImageWithMetadata

withDecoder :: IO (Bindgen.Ptr a) -> (Bindgen.Ptr a -> IO b) -> IO b
withDecoder allocate = bracket allocate Foreign.free

-- | Evaluates a Wuffs status. Returns Right () on success, or Left "error message" on failure.
checkWuffsStatus :: IO C.Wuffs_base__status -> IO (Either String ())
checkWuffsStatus getStatus = do
  status <- getStatus
  isErr <- Bindgen.with status $ \sPtr -> C.wuffs_base__status__is_error (ConstPtr sPtr)
  if isErr /= 0
    then do
      msgCStr <- Bindgen.with status $ \sPtr -> C.wuffs_base__status__message (ConstPtr sPtr)
      errMsg <- Foreign.peekCString (case msgCStr of ConstPtr p -> p)
      pure $ Left errMsg
    else pure $ Right ()

-- | Creates a Wuffs io_buffer directly from a Haskell ByteString.
withIoBufferFromByteString :: BS.ByteString -> (C.Wuffs_base__io_buffer -> IO a) -> IO a
withIoBufferFromByteString bs action =
  BSU.unsafeUseAsCStringLen bs $ \(cStrPtr, len) -> do
    ioBuf <- C.wuffs_base__ptr_u8__reader (Foreign.castPtr cStrPtr) (fromIntegral len) 1
    action ioBuf

-- | Dynamically allocates the required Wuffs work buffer for a specific decoder.
withWorkBuffer :: IO C.Wuffs_base__range_ii_u64 -> (C.Wuffs_base__slice_u8 -> IO a) -> IO a
withWorkBuffer getRange action = do
  workbufRange <- getRange
  let maxWorkbuf = fromIntegral (C.wuffs_base__range_ii_u64_max_incl workbufRange)
  Foreign.allocaBytes maxWorkbuf $ \workBufRaw -> do
    sliceWork <- C.wuffs_base__make_slice_u8 (Foreign.castPtr workBufRaw) (fromIntegral maxWorkbuf)
    action sliceWork

-- | Configures a generic Wuffs pixel_buffer to point at our Haskell Storable Vector memory,
-- forcing the decoder to output 32-bit RGBA.
withRgbaPixelBuffer ::
  Bindgen.Ptr C.Wuffs_base__pixel_config ->
  Int ->
  Int ->
  Bindgen.Ptr Word8 ->
  (Bindgen.Ptr C.Wuffs_base__pixel_buffer -> IO a) ->
  IO a
withRgbaPixelBuffer pixCfgPtr width height rawPixels action = do
  nullPixBuf <- C.wuffs_base__null_pixel_buffer
  Bindgen.with nullPixBuf $ \pixBufPtr -> do
    let rgbaFormat = C.wUFFS_BASE__PIXEL_FORMAT__RGBA_NONPREMUL
        capacity = width * height * 4
    C.wuffs_base__pixel_config__set
      pixCfgPtr
      (fromIntegral rgbaFormat)
      0
      (fromIntegral width)
      (fromIntegral height)
    slice <- C.wuffs_base__make_slice_u8 rawPixels (fromIntegral capacity)
    _ <- C.wuffs_base__pixel_buffer__set_from_slice pixBufPtr (ConstPtr pixCfgPtr) slice
    action pixBufPtr

-- | TODO: Implement ExceptT
-- TODO: Implement streaming version as well.
decodeImageWithMetadata :: BS.ByteString -> IO (Either String (DynamicImage, Metadata))
decodeImageWithMetadata bs =
  withIoBufferFromByteString bs $ \ioBuf ->
    withDecoder C.wuffs_png__decoder__alloc $ \decoderPtr -> do
      nullImgCfg <- C.wuffs_base__null_image_config
      Bindgen.with nullImgCfg $ \imgCfgPtr -> do
        Bindgen.with ioBuf $ \ioBufPtr -> do
          cfgRes <-
            checkWuffsStatus $
              C.wuffs_png__decoder__decode_image_config decoderPtr imgCfgPtr ioBufPtr
          case cfgRes of
            Left err -> pure $ Left ("Config decode failed: " <> err)
            Right () -> do
              let pixCfgPtr = Foreign.castPtr imgCfgPtr
              w <- C.wuffs_base__pixel_config__width (ConstPtr pixCfgPtr)
              h <- C.wuffs_base__pixel_config__height (ConstPtr pixCfgPtr)

              let width = fromIntegral w :: Int
                  height = fromIntegral h :: Int
                  capacity = width * height * 4
              mVec <- MVS.new capacity
              MVS.unsafeWith mVec $ \rawPixels ->
                withRgbaPixelBuffer pixCfgPtr width height rawPixels $ \pixBufPtr ->
                  withWorkBuffer (C.wuffs_png__decoder__workbuf_len (ConstPtr decoderPtr)) $ \sliceWork -> do
                    frameRes <-
                      checkWuffsStatus $
                        C.wuffs_png__decoder__decode_frame decoderPtr pixBufPtr ioBufPtr 0 sliceWork Foreign.nullPtr
                    case frameRes of
                      Left err -> pure $ Left ("Frame decode failed: " <> err)
                      Right () -> do
                        frozenVec <- VS.unsafeFreeze mVec
                        pure $ Right (ImageRGBA8 (Image width height frozenVec), error "TODO: Metadata")

wuffsVersion :: IO BS.ByteString
wuffsVersion = pure C.wUFFS_VERSION_STRING
