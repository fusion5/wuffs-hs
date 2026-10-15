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
import Control.Monad
import Control.Monad.IO.Class
import Control.Monad.Trans.Except
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

data WuffsError
  = PNGDecodeError String
  | PNGFrameDecodeError String
  deriving (Show)

type Err a = ExceptT WuffsError IO a

readImageWithMetadata :: FilePath -> IO (Either WuffsError (DynamicImage, Metadata))
readImageWithMetadata filePath = runExceptT $ readImageWithMetadataT filePath

readImageWithMetadataT :: FilePath -> Err (DynamicImage, Metadata)
readImageWithMetadataT filePath = liftIO (BS.readFile filePath) >>= decodeImageWithMetadataT

liftWith :: ((a -> IO (Either WuffsError b)) -> IO (Either WuffsError b)) -> (a -> Err b) -> Err b
liftWith bracketFn action = ExceptT $ bracketFn (runExceptT . action)

withDecoderT :: IO (Bindgen.Ptr a) -> (Bindgen.Ptr a -> Err b) -> Err b
withDecoderT allocate = liftWith (bracket allocate Foreign.free)

withMVSUnsafeT :: (Bindgen.Storable a) => MVS.IOVector a -> (Bindgen.Ptr a -> Err b) -> Err b
withMVSUnsafeT mutableVector = liftWith (MVS.unsafeWith mutableVector)

withRgbaPixelBufferT ::
  Bindgen.Ptr C.Wuffs_base__pixel_config ->
  Int ->
  Int ->
  Bindgen.Ptr Word8 ->
  (Bindgen.Ptr C.Wuffs_base__pixel_buffer -> Err b) ->
  Err b
withRgbaPixelBufferT pixelConfigurationPtr width height rawPixels =
  liftWith (withRgbaPixelBuffer pixelConfigurationPtr width height rawPixels)

-- | Evaluates a Wuffs status. Returns Right () on success, or Left "error message" on failure.
checkWuffsStatus :: (String -> WuffsError) -> IO C.Wuffs_base__status -> Err ()
checkWuffsStatus mkError getStatus = do
  status <- liftIO getStatus
  isErr <- withT status $ \sPtr -> liftIO $ C.wuffs_base__status__is_error (ConstPtr sPtr)
  when (isErr /= 0) $ do
    msgCStr <- withT status $ \sPtr -> liftIO $ C.wuffs_base__status__message (ConstPtr sPtr)
    errorMessage <- liftIO $ Foreign.peekCString (case msgCStr of ConstPtr p -> p)
    throwE $ mkError errorMessage

-- | Creates a Wuffs io_buffer directly from a Haskell ByteString.
withIoBufferFromByteString :: BS.ByteString -> (C.Wuffs_base__io_buffer -> IO a) -> IO a
withIoBufferFromByteString bs action =
  BSU.unsafeUseAsCStringLen bs $ \(cStrPtr, len) -> do
    ioBuf <- C.wuffs_base__ptr_u8__reader (Foreign.castPtr cStrPtr) (fromIntegral len) 1
    action ioBuf

withIoBufferFromByteStringT :: BS.ByteString -> (C.Wuffs_base__io_buffer -> Err a) -> Err a
withIoBufferFromByteStringT bs = liftWith (withIoBufferFromByteString bs)

withWorkBufferT :: IO C.Wuffs_base__range_ii_u64 -> (C.Wuffs_base__slice_u8 -> Err b) -> Err b
withWorkBufferT getRange = liftWith (withWorkBuffer getRange)

-- | Dynamically allocates the required Wuffs work buffer for a specific decoder.
withWorkBuffer :: IO C.Wuffs_base__range_ii_u64 -> (C.Wuffs_base__slice_u8 -> IO a) -> IO a
withWorkBuffer getRange action = do
  workbufRange <- getRange
  let maxWorkbuf = fromIntegral (C.wuffs_base__range_ii_u64_max_incl workbufRange)
  Foreign.allocaBytes maxWorkbuf $ \workBufRaw -> do
    sliceWork <- C.wuffs_base__make_slice_u8 (Foreign.castPtr workBufRaw) (fromIntegral maxWorkbuf)
    action sliceWork

withT :: (Bindgen.Storable a) => a -> (Bindgen.Ptr a -> Err b) -> Err b
withT ptr = liftWith (Bindgen.with ptr)

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

-- TODO: Implement streaming version as well.
decodeImageWithMetadata :: BS.ByteString -> IO (Either WuffsError (DynamicImage, Metadata))
decodeImageWithMetadata imageBytes = runExceptT $ decodeImageWithMetadataT imageBytes

decodeImageWithMetadataT :: BS.ByteString -> Err (DynamicImage, Metadata)
decodeImageWithMetadataT bs =
  withIoBufferFromByteStringT bs $ \ioBuf ->
    withDecoderT C.wuffs_png__decoder__alloc $ \decoderPtr -> do
      nullImgCfg <- liftIO C.wuffs_base__null_image_config
      withT nullImgCfg $ \imgCfgPtr -> do
        withT ioBuf $ \ioBufferPtr -> do
          checkWuffsStatus PNGDecodeError $
            C.wuffs_png__decoder__decode_image_config decoderPtr imgCfgPtr ioBufferPtr
          let pixelConfigPtr = Foreign.castPtr imgCfgPtr
          width <-
            fromIntegral
              <$> liftIO (C.wuffs_base__pixel_config__width (ConstPtr pixelConfigPtr))
          height <-
            fromIntegral
              <$> liftIO (C.wuffs_base__pixel_config__height (ConstPtr pixelConfigPtr))
          let capacity = width * height * 4
          mutableVector <- MVS.new capacity
          withMVSUnsafeT mutableVector $ \rawPixels ->
            withRgbaPixelBufferT pixelConfigPtr width height rawPixels $ \pixelBufferPtr ->
              withWorkBufferT (C.wuffs_png__decoder__workbuf_len (ConstPtr decoderPtr)) $
                \sliceWork -> do
                  checkWuffsStatus PNGFrameDecodeError $
                    C.wuffs_png__decoder__decode_frame
                      decoderPtr
                      pixelBufferPtr
                      ioBufferPtr
                      0
                      sliceWork
                      Foreign.nullPtr
                  frozenVector <- VS.unsafeFreeze mutableVector
                  pure (ImageRGBA8 (Image width height frozenVector), error "TODO: Metadata")

wuffsVersion :: IO BS.ByteString
wuffsVersion = pure C.wUFFS_VERSION_STRING
