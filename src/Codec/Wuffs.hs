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
  | TryingToAdvanceAfterBuffer
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
withIOBufferFromByteString :: BS.ByteString -> (C.Wuffs_base__io_buffer -> IO a) -> IO a
withIOBufferFromByteString bs action =
  BSU.unsafeUseAsCStringLen bs $ \(cStrPtr, len) -> do
    ioBuf <- C.wuffs_base__ptr_u8__reader (Foreign.castPtr cStrPtr) (fromIntegral len) 1
    action ioBuf

withIOBufferFromByteStringT :: BS.ByteString -> (C.Wuffs_base__io_buffer -> Err a) -> Err a
withIOBufferFromByteStringT bs = liftWith $ withIOBufferFromByteString bs

withSliceFromRangeT :: IO C.Wuffs_base__range_ii_u64 -> (C.Wuffs_base__slice_u8 -> Err b) -> Err b
withSliceFromRangeT getRange = liftWith (withSliceFromRange getRange)

-- | Dynamically allocates the required Wuffs work buffer for a specific decoder.
withSliceFromRange :: IO C.Wuffs_base__range_ii_u64 -> (C.Wuffs_base__slice_u8 -> IO a) -> IO a
withSliceFromRange getRange action = do
  workbufRange <- getRange
  let maxWorkbuf = fromIntegral (C.wuffs_base__range_ii_u64_max_incl workbufRange)
  withSlice maxWorkbuf action

-- withSliceT :: Int -> (C.Wuffs_base__slice_u8 -> Err b) -> Err b
-- withSliceT size = liftWith (withSlice size)

withSlice :: Int -> (C.Wuffs_base__slice_u8 -> IO a) -> IO a
withSlice size action =
  Foreign.allocaBytes size $ \workBufRaw -> do
    sliceWork <- C.wuffs_base__make_slice_u8 (Foreign.castPtr workBufRaw) (fromIntegral size)
    action sliceWork

allocaBytesT :: Int -> (Bindgen.Ptr Word8 -> Err b) -> Err b
allocaBytesT size = liftWith (Foreign.allocaBytes size)

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
  withIOBufferFromByteStringT imageFileBS $ \imageFileBuffer ->
    withDecoderT C.wuffs_png__decoder__alloc $ \decoderPtr -> do
      nullImgCfg <- liftIO C.wuffs_base__null_image_config
      withT nullImgCfg $ \imageConfigPtr -> do
        withT imageFileBuffer $ \imageFileBufferPtr -> do
          metadata <- decodeConfigAndMetadata decoderPtr imageConfigPtr imageFileBufferPtr
          let pixelConfigPtr = Foreign.castPtr imageConfigPtr
          width <-
            fromIntegral <$> liftIO (C.wuffs_base__pixel_config__width (ConstPtr pixelConfigPtr))
          height <-
            fromIntegral <$> liftIO (C.wuffs_base__pixel_config__height (ConstPtr pixelConfigPtr))
          let capacity = width * height * 4
          mutableVector <- MVS.new capacity
          withMVSUnsafeT mutableVector $ \rawPixels ->
            withRgbaPixelBufferT pixelConfigPtr width height rawPixels $ \pixelBufferPtr ->
              withSliceFromRangeT (C.wuffs_png__decoder__workbuf_len (ConstPtr decoderPtr)) $
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

-- | Helper: Safely advances the Wuffs IO buffer read index (ri), and returns
-- the bytes that were read.
readAndAdvance :: Bindgen.Ptr C.Wuffs_base__io_buffer -> Int -> Err Bindgen.ByteString
readAndAdvance ioBufferPtr offset = do
  ioBuffer <- liftIO $ Foreign.peek ioBufferPtr
  availableBytes <- liftIO $ C.wuffs_base__io_buffer__reader_length (ConstPtr ioBufferPtr)
  when (offset > fromIntegral availableBytes) $ throwE TryingToAdvanceAfterBuffer

  let meta = C.wuffs_base__io_buffer_meta ioBuffer
      newReadIndex = C.wuffs_base__io_buffer_meta_ri meta + fromIntegral offset
  -- Read the value from the buffer into a ByteString and return it.
  readerBuffer <- liftIO $ C.wuffs_base__io_buffer__reader_pointer (ConstPtr ioBufferPtr)
  -- Number of unread bytes available to be read from the buffer, meta.wi - meta.ri
  result <- liftIO $ BS.packCStringLen (Foreign.castPtr readerBuffer, offset)
  liftIO $
    Foreign.poke ioBufferPtr $
      ioBuffer
        { C.wuffs_base__io_buffer_meta =
            meta
              { C.wuffs_base__io_buffer_meta_ri = newReadIndex
              }
        }
  pure result

-- | Helper: Extracts the passthrough range from the more_information struct
getPassthroughRange :: Bindgen.Ptr C.Wuffs_base__more_information -> Err (Int, Int)
getPassthroughRange moreInfoPtr = liftIO $ do
  range <- C.wuffs_base__more_information__metadata_raw_passthrough__range (ConstPtr moreInfoPtr)
  pure
    ( fromIntegral $ C.wuffs_base__range_ie_u64_min_incl range,
      fromIntegral $ C.wuffs_base__range_ie_u64_max_excl range
    )

-- | Helper: Reads decompressed bytes from a Wuffs IO Buffer
readIOBuffer :: Bindgen.Ptr C.Wuffs_base__io_buffer -> Err BS.ByteString
readIOBuffer bufPtr = liftIO $ do
  bufferLength <- C.wuffs_base__io_buffer__reader_length (ConstPtr bufPtr)
  pointer <- C.wuffs_base__io_buffer__reader_pointer (ConstPtr bufPtr)
  BS.packCStringLen (Foreign.castPtr pointer, fromIntegral bufferLength)

-- | Note: https://github.com/google/wuffs/blob/main/doc/std/image-decoders-call-sequence.md
decodeConfigAndMetadata ::
  Bindgen.Ptr C.Wuffs_png__decoder ->
  Bindgen.Ptr C.Wuffs_base__image_config ->
  Bindgen.Ptr C.Wuffs_base__io_buffer ->
  Err Meta.Metadatas
decodeConfigAndMetadata decoderPtr configPtr imageBufferPtr = do
  void $
    liftIO $
      traverse
        (\fourcc -> C.wuffs_png__decoder__set_report_metadata decoderPtr fourcc 1)
        [fourccICCP, fourccXMP, fourccEXIF]
  readConfigLoop Meta.empty
  where
    fourccICCP = fromIntegral C.wUFFS_BASE__FOURCC__ICCP
    fourccEXIF = fromIntegral C.wUFFS_BASE__FOURCC__EXIF
    fourccXMP = fromIntegral C.wUFFS_BASE__FOURCC__XMP

    readConfigLoop accMeta = do
      status <- liftIO $ C.wuffs_png__decoder__decode_image_config decoderPtr configPtr imageBufferPtr
      (isNote, _isSuspension) <- checkWuffsStatus PNGImageConfigDecodeError $ pure status
      if isNote
        then extractMetadataChunk accMeta >>= readConfigLoop
        else pure accMeta

    metadataBufferBytes = 256 * 1024

    extractMetadataChunk :: Meta.Metadatas -> Err Meta.Metadatas
    extractMetadataChunk accMeta = allocaBytesT metadataBufferBytes $ \metadataBuffer -> do
      nullMoreInfo <- liftIO C.wuffs_base__empty_more_information
      metadataIOBuffer <-
        liftIO $ C.wuffs_base__ptr_u8__writer metadataBuffer (fromIntegral metadataBufferBytes)
      withT metadataIOBuffer $ \metadataIOBufferPtr ->
        withT nullMoreInfo $ \moreInfoPtr -> do
          uncompressedMetadata <- exhaustTellMeMore metadataIOBufferPtr moreInfoPtr BS.empty
          metadataType <-
            liftIO $
              C.wuffs_base__more_information__metadata__fourcc (ConstPtr moreInfoPtr)
          -- If uncompressedMetadata is empty, it was a compressed chunk. Read the Wuffs buffer.
          finalMetadataBytes <-
            if BS.null uncompressedMetadata
              then readIOBuffer metadataIOBufferPtr
              else pure uncompressedMetadata
          pure $ case metadataType of
            _
              | metadataType == fourccICCP ->
                  Meta.insert Meta.ColorSpace (Meta.ICCProfile finalMetadataBytes) accMeta
            _
              | metadataType == fourccEXIF ->
                  Meta.insert (Meta.Unknown "EXIF") (Meta.String $ show finalMetadataBytes) accMeta
            _
              | metadataType == fourccXMP ->
                  Meta.insert (Meta.Unknown "XMP") (Meta.String $ show finalMetadataBytes) accMeta
            _ -> accMeta

    exhaustTellMeMore metadataCompressedIOBufferPtr moreInfoPtr accumulatedBytes = do
      (_isNote, isSuspension) <-
        checkWuffsStatus PNGImageTellMeMoreError $
          C.wuffs_png__decoder__tell_me_more
            decoderPtr
            metadataCompressedIOBufferPtr
            moreInfoPtr
            imageBufferPtr
      -- liftIO (print $ unwords ["is note", show isNote, "is suspension", show isSuspension])
      -- Wuffs indicates where the uncompressed data lies in the originial image data,
      -- between minIndex and maxIndex. If the data is compressed, then the two are
      -- equal, exhaustTellMeMore returns empty, and wuffs decompresses the data in
      -- metadataIOBufferPtr.
      (metadataStartIndex, metadataEndIndex) <- getPassthroughRange moreInfoPtr
      let chunkSize = metadataEndIndex - metadataStartIndex
      newAccumulatedBytes <-
        if chunkSize > 0
          then do
            chunkBytes <- readAndAdvance imageBufferPtr chunkSize
            pure $ accumulatedBytes <> chunkBytes
          else pure accumulatedBytes
      if isSuspension
        then exhaustTellMeMore metadataCompressedIOBufferPtr moreInfoPtr newAccumulatedBytes
        else pure newAccumulatedBytes

wuffsVersion :: IO BS.ByteString
wuffsVersion = pure C.wUFFS_VERSION_STRING
