module Codec.Wuffs
  ( readImageWithMetadata,
    decodeImageWithMetadata,
    wuffsVersion,
  )
where

import Codec.Picture hiding (decodeImageWithMetadata, readImageWithMetadata)
import Codec.Picture.Metadata qualified as Meta
import Codec.Wuffs.Bindings.Generated qualified as C
import Codec.Wuffs.Bindings.Generated.Safe qualified as C
import Control.Exception
import Control.Monad
import Control.Monad.IO.Class
import Control.Monad.Trans.Except
import Data.ByteString qualified as BS
import Data.ByteString.Unsafe qualified as BSU (unsafeUseAsCStringLen)
import Data.Vector.Storable qualified as VS
import Data.Vector.Storable.Mutable qualified as MVS
import Data.Word
import Foreign qualified
import Foreign.C.ConstPtr (ConstPtr (..))
import Foreign.C.String qualified as Foreign
import HsBindgen.Runtime.Support qualified as Bindgen
import Prelude

data WuffsError
  = PNGDecodeError String
  | PNGFrameDecodeError String
  | PNGImageConfigDecodeError String
  | PNGImageTellMeMoreError String
  deriving (Show)

instance Exception WuffsError

type Err a = ExceptT WuffsError IO a

readImageWithMetadata :: FilePath -> IO (Either WuffsError (DynamicImage, Meta.Metadatas))
readImageWithMetadata filePath = runExceptT $ readImageWithMetadataT filePath

readImageWithMetadataT :: FilePath -> Err (DynamicImage, Meta.Metadatas)
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
checkWuffsStatus :: (String -> WuffsError) -> IO C.Wuffs_base__status -> Err (Bool, Bool)
checkWuffsStatus mkError getStatus = do
  status <- liftIO getStatus
  (isError, isNote, isSuspension) <- withT status $ \sPtr -> liftIO $ do
    isError <- C.wuffs_base__status__is_error $ ConstPtr sPtr
    isNote <- C.wuffs_base__status__is_note $ ConstPtr sPtr
    isSuspension <- C.wuffs_base__status__is_suspension $ ConstPtr sPtr
    pure (isError, isNote, isSuspension)
  when (isError /= 0) $ do
    msgCStr <- withT status $ \sPtr -> liftIO $ C.wuffs_base__status__message (ConstPtr sPtr)
    errorMessage <- liftIO $ Foreign.peekCString (case msgCStr of ConstPtr p -> p)
    throwE $ mkError errorMessage
  pure (isNote /= 0, isSuspension /= 0)

-- | Creates a Wuffs io_buffer directly from a Haskell ByteString.
withIoBufferFromByteString :: BS.ByteString -> (C.Wuffs_base__io_buffer -> IO a) -> IO a
withIoBufferFromByteString bs action =
  BSU.unsafeUseAsCStringLen bs $ \(cStrPtr, len) -> do
    ioBuf <- C.wuffs_base__ptr_u8__reader (Foreign.castPtr cStrPtr) (fromIntegral len) 1
    action ioBuf

withIoBufferFromByteStringT :: BS.ByteString -> (C.Wuffs_base__io_buffer -> Err a) -> Err a
withIoBufferFromByteStringT bs = liftWith (withIoBufferFromByteString bs)

withWorkBufferRangeT :: IO C.Wuffs_base__range_ii_u64 -> (C.Wuffs_base__slice_u8 -> Err b) -> Err b
withWorkBufferRangeT getRange = liftWith (withWorkBufferRange getRange)

-- | Dynamically allocates the required Wuffs work buffer for a specific decoder.
withWorkBufferRange :: IO C.Wuffs_base__range_ii_u64 -> (C.Wuffs_base__slice_u8 -> IO a) -> IO a
withWorkBufferRange getRange action = do
  workbufRange <- getRange
  let maxWorkbuf = fromIntegral (C.wuffs_base__range_ii_u64_max_incl workbufRange)
  withWorkBuffer maxWorkbuf action

withWorkBufferT :: Int -> (C.Wuffs_base__slice_u8 -> Err b) -> Err b
withWorkBufferT size = liftWith (withWorkBuffer size)

withWorkBuffer :: Int -> (C.Wuffs_base__slice_u8 -> IO a) -> IO a
withWorkBuffer size action = do
  Foreign.allocaBytes size $ \workBufRaw -> do
    sliceWork <- C.wuffs_base__make_slice_u8 (Foreign.castPtr workBufRaw) (fromIntegral size)
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
decodeImageWithMetadata :: BS.ByteString -> IO (Either WuffsError (DynamicImage, Meta.Metadatas))
decodeImageWithMetadata imageBytes = runExceptT $ decodeImageWithMetadataT imageBytes

decodeImageWithMetadataT :: BS.ByteString -> Err (DynamicImage, Meta.Metadatas)
decodeImageWithMetadataT imageFileBS =
  withIoBufferFromByteStringT imageFileBS $ \imageFileBuffer ->
    withDecoderT C.wuffs_png__decoder__alloc $ \decoderPtr -> do
      nullImgCfg <- liftIO C.wuffs_base__null_image_config
      withT nullImgCfg $ \imageConfigPtr -> do
        withT imageFileBuffer $ \imageFileBufferPtr -> do
          metadata <- decodeConfigAndMetadata imageFileBS decoderPtr imageConfigPtr imageFileBufferPtr
          let pixelConfigPtr = Foreign.castPtr imageConfigPtr
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
              withWorkBufferRangeT (C.wuffs_png__decoder__workbuf_len (ConstPtr decoderPtr)) $
                \sliceWork -> do
                  -- TODO: exhaust frames?
                  _ <-
                    checkWuffsStatus PNGFrameDecodeError $
                      C.wuffs_png__decoder__decode_frame
                        decoderPtr
                        pixelBufferPtr
                        imageFileBufferPtr
                        0
                        sliceWork
                        Foreign.nullPtr
                  frozenVector <- VS.unsafeFreeze mutableVector
                  pure (ImageRGBA8 (Image width height frozenVector), metadata)

-- | Note: https://github.com/google/wuffs/blob/main/doc/std/image-decoders-call-sequence.md
decodeConfigAndMetadata ::
  BS.ByteString ->
  Bindgen.Ptr C.Wuffs_png__decoder ->
  Bindgen.Ptr C.Wuffs_base__image_config ->
  Bindgen.Ptr C.Wuffs_base__io_buffer ->
  Err Meta.Metadatas
decodeConfigAndMetadata imageBytes decoderPtr configPtr imageBufferPtr = do
  -- Opt-in to specific metadata chunks (silencing the unused-bind warnings)
  void . liftIO $ C.wuffs_png__decoder__set_report_metadata decoderPtr (fromIntegral C.wUFFS_BASE__FOURCC__ICCP) 1
  void . liftIO $ C.wuffs_png__decoder__set_report_metadata decoderPtr (fromIntegral C.wUFFS_BASE__FOURCC__XMP) 1
  void . liftIO $ C.wuffs_png__decoder__set_report_metadata decoderPtr (fromIntegral C.wUFFS_BASE__FOURCC__EXIF) 1

  readConfigLoop Meta.empty
  where
    -- The main recursive yield loop
    readConfigLoop accMeta = do
      liftIO $ print @String "wuffs_png__decoder__decode_image_config"
      status <- liftIO $ C.wuffs_png__decoder__decode_image_config decoderPtr configPtr imageBufferPtr
      (isNote, _isSuspension) <- checkWuffsStatus PNGImageConfigDecodeError $ pure status

      if isNote
        then do
          newMeta <- extractChunk accMeta
          readConfigLoop newMeta
        else
          pure accMeta

    -- Queries Wuffs for the metadata location, slices the original ByteString, and wraps it for
    -- JuicyPixels
    metaBufSize = 256 * 1024

    extractChunk :: Meta.Metadatas -> Err Meta.Metadatas
    extractChunk accMeta =
      withWorkBufferT metaBufSize $ \metaSlice -> do
        nullMoreInfo <- liftIO C.wuffs_base__empty_more_information
        let slicePtr = Foreign.castPtr (C.wuffs_base__slice_u8_ptr metaSlice)
            sliceLen = C.wuffs_base__slice_u8_len metaSlice

        metaIOBuffer <- liftIO $ C.wuffs_base__ptr_u8__writer slicePtr sliceLen

        withT metaIOBuffer $ \metaIOBufferPtr -> do
          withT nullMoreInfo $ \moreInfoPtr -> do
            let exhaustTellMeMore accumulatedReadBytes = do
                  (_isNote, isSuspension) <-
                    checkWuffsStatus PNGImageTellMeMoreError $
                      C.wuffs_png__decoder__tell_me_more
                        decoderPtr
                        metaIOBufferPtr
                        moreInfoPtr
                        imageBufferPtr

                  -- 1. Check for passthrough bytes RIGHT NOW, before the chunk finishes
                  range <- liftIO $ C.wuffs_base__more_information__metadata_raw_passthrough__range (ConstPtr moreInfoPtr)
                  let minIdx = fromIntegral $ C.wuffs_base__range_ie_u64_min_incl range
                      maxIdx = fromIntegral $ C.wuffs_base__range_ie_u64_max_excl range

                  -- 2. If passthrough is active, slice the bytes and advance the stream
                  newAccumulatedBytes <-
                    if minIdx < maxIdx
                      then do
                        let chunkBytes = BS.take (maxIdx - minIdx) (BS.drop minIdx imageBytes)
                        buf <- liftIO $ Foreign.peek imageBufferPtr
                        let meta = C.wuffs_base__io_buffer_meta buf
                            newMeta =
                              meta
                                { C.wuffs_base__io_buffer_meta_ri =
                                    C.wuffs_base__io_buffer_meta_ri meta + fromIntegral (maxIdx - minIdx)
                                }
                            newBuf = buf {C.wuffs_base__io_buffer_meta = newMeta}
                        liftIO $ Foreign.poke imageBufferPtr newBuf

                        pure (accumulatedReadBytes <> chunkBytes)
                      else pure accumulatedReadBytes

                  -- 3. Loop if suspended, otherwise return the accumulated passthrough bytes
                  if isSuspension
                    then exhaustTellMeMore newAccumulatedBytes
                    else pure newAccumulatedBytes

            -- Run the loop
            passthroughBytes <- exhaustTellMeMore BS.empty

            metadataType <- liftIO $ C.wuffs_base__more_information__metadata__fourcc (ConstPtr moreInfoPtr)

            -- 4. Final selection: If passthrough is empty, it was compressed (ICCP). Otherwise, we have our bytes!
            finalBytes <-
              if BS.null passthroughBytes
                then do
                  -- COMPRESSED (e.g. ICCP): Read the decompressed payload from the Wuffs buffer
                  len <- liftIO $ C.wuffs_base__io_buffer__reader_length (ConstPtr metaIOBufferPtr)
                  if len > 0
                    then do
                      ptr <- liftIO $ C.wuffs_base__io_buffer__reader_pointer (ConstPtr metaIOBufferPtr)
                      liftIO $ BS.packCStringLen (Foreign.castPtr ptr, fromIntegral len)
                    else pure BS.empty
                else
                  -- UNCOMPRESSED (e.g. EXIF): We already sliced it!
                  pure passthroughBytes

            liftIO $
              print $
                unwords
                  [ "Successfully extracted",
                    show (BS.length finalBytes),
                    "bytes for metadata type",
                    show metadataType,
                    show $ BS.take 10 finalBytes
                  ]

            pure $
              case metadataType of
                _
                  | metadataType == fromIntegral C.wUFFS_BASE__FOURCC__ICCP ->
                      Meta.insert Meta.ColorSpace (Meta.ICCProfile finalBytes) accMeta
                _
                  | metadataType == fromIntegral C.wUFFS_BASE__FOURCC__EXIF ->
                      -- TODO: parse the exif by putting it in a fake jpeg container
                      Meta.insert (Meta.Unknown "EXIF") (Meta.String $ show finalBytes) accMeta
                _
                  | metadataType == fromIntegral C.wUFFS_BASE__FOURCC__XMP ->
                      -- TODO: parse XMP as something else or use Data.ByteString.Char8 as String
                      Meta.insert (Meta.Unknown "XMP") (Meta.String $ show finalBytes) accMeta
                _ -> accMeta

wuffsVersion :: IO BS.ByteString
wuffsVersion = pure C.wUFFS_VERSION_STRING
