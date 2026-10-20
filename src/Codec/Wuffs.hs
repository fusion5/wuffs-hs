module Codec.Wuffs
  ( readImageWithMetadata,
    decodeImageWithMetadata,
    wuffsVersion,
    Metadata (..),
    MetadataBlock (..),
  )
where

import Codec.Decoders
import Codec.Picture hiding (decodeImageWithMetadata, readImageWithMetadata)
import Codec.Types
import Codec.Wuffs.Bindings.Generated qualified as C
import Codec.Wuffs.Bindings.Generated.Safe qualified as C
import Control.Monad
import Control.Monad.IO.Class
import Control.Monad.Trans.Except
import Data.ByteString qualified as BS
import Data.ByteString.Unsafe qualified as BSU (unsafeUseAsCStringLen)
import Data.Foldable (traverse_)
import Data.Vector.Storable qualified as VS ()
import Data.Vector.Storable.Mutable qualified as MVS ()
import Data.Word ()
import Foreign qualified
import Foreign.C.ConstPtr (ConstPtr (..))
import Foreign.C.String qualified as Foreign
import HsBindgen.Runtime.Support qualified as Bindgen
import Prelude

-- import Numeric (showHex)

readImageWithMetadata :: FilePath -> IO (Either WuffsError (DynamicImage, Metadata))
readImageWithMetadata filePath = runExceptT $ readImageWithMetadataT filePath

readImageWithMetadataT :: FilePath -> Err (DynamicImage, Metadata)
readImageWithMetadataT filePath = liftIO (BS.readFile filePath) >>= decodeT

getStatus :: C.Wuffs_base__status -> Err Status
getStatus status = withT status $ \statusPtr ->
  let constStatusPtr = ConstPtr statusPtr
      toBool = (/=) 0
   in liftIO $ do
        isComplete <- toBool <$> C.wuffs_base__status__is_complete constStatusPtr
        isError <- toBool <$> C.wuffs_base__status__is_error constStatusPtr
        isNote <- toBool <$> C.wuffs_base__status__is_note constStatusPtr
        isSuspension <- toBool <$> C.wuffs_base__status__is_suspension constStatusPtr
        isOk <- toBool <$> C.wuffs_base__status__is_ok constStatusPtr
        isTruncatedInputError <-
          toBool
            <$> C.wuffs_base__status__is_truncated_input_error constStatusPtr
        messageCString <- C.wuffs_base__status__message constStatusPtr
        message <- Foreign.maybePeek Foreign.peekCString $ case messageCString of ConstPtr p -> p
        pure Status {..}

-- | Creates a Wuffs io_buffer reader directly from a Haskell ByteString.
withIOBufferFromByteString ::
  BS.ByteString -> (Bindgen.Ptr C.Wuffs_base__io_buffer -> IO a) -> IO a
withIOBufferFromByteString bs action =
  BSU.unsafeUseAsCStringLen bs $ \(cStrPtr, len) -> do
    buffer <- C.wuffs_base__ptr_u8__reader (Foreign.castPtr cStrPtr) (fromIntegral len) 1
    Bindgen.with buffer action

withIOBufferFromByteStringT :: BS.ByteString -> (Bindgen.Ptr C.Wuffs_base__io_buffer -> Err a) -> Err a
withIOBufferFromByteStringT bs = liftWith $ withIOBufferFromByteString bs

withT :: (Bindgen.Storable a) => a -> (Bindgen.Ptr a -> Err b) -> Err b
withT ptr = liftWith (Bindgen.with ptr)

-- TODO: Implement streaming version as well.
decodeImageWithMetadata :: BS.ByteString -> IO (Either WuffsError (DynamicImage, Metadata))
decodeImageWithMetadata imageBytes = runExceptT $ decodeT imageBytes

guessImageType :: Bindgen.Ptr C.Wuffs_base__io_buffer -> Err Bindgen.Int32
guessImageType imageFileBufferPtr = do
  readerBuffer <- liftIO $ C.wuffs_base__io_buffer__reader_pointer (ConstPtr imageFileBufferPtr)
  guessSlice <- liftIO $ C.wuffs_base__make_slice_u8 readerBuffer autodetectBufferBytes
  liftIO $ C.wuffs_base__magic_number_guess_fourcc guessSlice 1
  where
    autodetectBufferBytes = 64

decodeT :: BS.ByteString -> Err (DynamicImage, Metadata)
decodeT imageFileByteString = do
  withIOBufferFromByteStringT imageFileByteString $ \imageFileBuffer -> do
    imageType <- guessImageType imageFileBuffer
    withDecoderByImageType imageType $ \decoder -> do
      liftIO $ configureDecoder decoder
      imageConfig <- liftIO C.wuffs_base__null_image_config
      withT imageConfig $ \imageConfigPtr ->
        decodeImageConfigLoopT decoder imageConfigPtr imageFileBuffer (Metadata mempty)

fourccICCP, fourccEXIF, fourccXMP :: Bindgen.Word32
fourccICCP = fromIntegral C.wUFFS_BASE__FOURCC__ICCP
fourccEXIF = fromIntegral C.wUFFS_BASE__FOURCC__EXIF
fourccXMP = fromIntegral C.wUFFS_BASE__FOURCC__XMP

configureDecoder :: Decoder -> IO ()
configureDecoder decoder = do
  traverse_ (\fourcc -> setReportMetadata decoder fourcc 1) [fourccICCP, fourccXMP, fourccEXIF]

decodeImageConfigLoopT ::
  Decoder ->
  Bindgen.Ptr C.Wuffs_base__image_config ->
  Bindgen.Ptr C.Wuffs_base__io_buffer ->
  Metadata ->
  Err (DynamicImage, Metadata)
decodeImageConfigLoopT decoder imageConfigPtr imageBufferPtr metadata = do
  decodeImageConfigT decoder imageConfigPtr imageBufferPtr >>= \case
    Status {isError = True, message = message} -> throwE $ ImageConfigDecodeError message
    Status {isOk = True} ->
      decodeFrameConfigLoopT decoder imageConfigPtr imageBufferPtr metadata
    Status {isNote = True} -> do
      nullMoreInfo <- liftIO C.wuffs_base__empty_more_information
      (newMetadata, metadataType) <- withT nullMoreInfo $ \moreInfoPtr -> do
        metadataBytes <- liftWith (Foreign.allocaBytes metadataBufferBytes) $ \metadataBufferRaw ->
          do
            metadataIOBuffer <-
              liftIO $
                C.wuffs_base__ptr_u8__writer metadataBufferRaw (fromIntegral metadataBufferBytes)
            withT metadataIOBuffer $ \metadataIOBufferPtr -> do
              tellMeMoreLoopT decoder metadataIOBufferPtr moreInfoPtr imageBufferPtr BS.empty
        metadataType <- liftIO $ C.wuffs_base__more_information__metadata__fourcc (ConstPtr moreInfoPtr)
        pure (metadataBytes, metadataType)
      decodeImageConfigLoopT decoder imageConfigPtr imageBufferPtr $
        appendMetadata metadataType newMetadata metadata
    Status {isSuspension = True} -> do
      error "Streaming not implemented yet"
    Status {} ->
      error "Unexpected status"
  where
    metadataBufferBytes = 256 * 1024

appendMetadata :: Bindgen.Word32 -> Bindgen.ByteString -> Metadata -> Metadata
appendMetadata metadataType metadataBytes (Metadata accMetadata) = case metadataType of
  _ | metadataType == fourccICCP -> Metadata $ ICCP metadataBytes : accMetadata
  _ | metadataType == fourccEXIF -> Metadata $ EXIF metadataBytes : accMetadata
  _ | metadataType == fourccXMP -> Metadata $ XMP metadataBytes : accMetadata
  _ -> Metadata accMetadata

-- Image config transition function
decodeImageConfigT ::
  Decoder ->
  Bindgen.Ptr C.Wuffs_base__image_config ->
  Bindgen.Ptr C.Wuffs_base__io_buffer ->
  Err Status
decodeImageConfigT decoder imageConfigPtr imageBufferPtr =
  liftIO (decodeImageConfig decoder imageConfigPtr imageBufferPtr) >>= getStatus

tellMeMoreLoopT ::
  Decoder ->
  Bindgen.Ptr C.Wuffs_base__io_buffer ->
  Bindgen.Ptr C.Wuffs_base__more_information ->
  Bindgen.Ptr C.Wuffs_base__io_buffer ->
  BS.ByteString ->
  Err BS.ByteString
tellMeMoreLoopT decoder metadataDecompressedIOBufferPtr moreInfoPtr imageBufferPtr accumulatedBytes = do
  tellMeMoreT decoder metadataDecompressedIOBufferPtr moreInfoPtr imageBufferPtr >>= \case
    Status {isSuspension = True} -> do
      (metadataStartIndex, metadataEndIndex) <- getPassthroughRange moreInfoPtr
      let chunkSize = metadataEndIndex - metadataStartIndex
      newAccumulatedBytes <-
        if chunkSize > 0
          then do
            -- The metadata is a range from imageBufferPtr.
            -- NOTE: Watch out for Int type truncation if indices exceed maxBound :: Int
            chunkBytes <-
              liftIO $ extractPassthroughSlice imageBufferPtr metadataStartIndex chunkSize
            pure $ accumulatedBytes <> chunkBytes
          else
            -- The metadata was decompressed into metadataDecompressedIOBufferPtr
            pure accumulatedBytes

      tellMeMoreLoopT
        decoder
        metadataDecompressedIOBufferPtr
        moreInfoPtr
        imageBufferPtr
        newAccumulatedBytes
    _ -> pure accumulatedBytes

tellMeMoreT ::
  Decoder ->
  Bindgen.Ptr C.Wuffs_base__io_buffer ->
  Bindgen.Ptr C.Wuffs_base__more_information ->
  Bindgen.Ptr C.Wuffs_base__io_buffer ->
  Err Status
tellMeMoreT decoder metadataDecompressedIOBufferPtr moreInfoPtr imageBufferPtr =
  liftIO (tellMeMore decoder metadataDecompressedIOBufferPtr moreInfoPtr imageBufferPtr)
    >>= getStatus

decodeFrameConfigLoopT ::
  Decoder ->
  Bindgen.Ptr C.Wuffs_base__image_config ->
  Bindgen.Ptr C.Wuffs_base__io_buffer ->
  Metadata ->
  Err (DynamicImage, Metadata)
decodeFrameConfigLoopT _decoder _imageConfigPtr _imageBuffer _metadata = do
  error "TODO: define and implement decodeFrameConfigLoopT"

-- | Helper: Extracts the passthrough range from the more_information struct
getPassthroughRange :: Bindgen.Ptr C.Wuffs_base__more_information -> Err (Int, Int)
getPassthroughRange moreInfoPtr = liftIO $ do
  range <- C.wuffs_base__more_information__metadata_raw_passthrough__range (ConstPtr moreInfoPtr)
  pure
    ( fromIntegral $ C.wuffs_base__range_ie_u64_min_incl range,
      fromIntegral $ C.wuffs_base__range_ie_u64_max_excl range
    )

extractPassthroughSlice ::
  Bindgen.Ptr C.Wuffs_base__io_buffer -> Int -> Int -> IO Bindgen.ByteString
extractPassthroughSlice ioBufferPtr startIndex chunkSize = do
  -- Dereference the pointer to get the actual struct value
  ioBuffer <- Bindgen.peek ioBufferPtr

  -- Now apply the pure accessors to the struct, not the pointer
  let meta = C.wuffs_base__io_buffer_meta ioBuffer
      metaPos = C.wuffs_base__io_buffer_meta_pos meta
      metaRi = C.wuffs_base__io_buffer_meta_ri meta
      dataPtr = C.wuffs_base__slice_u8_ptr (C.wuffs_base__io_buffer_data ioBuffer)

      bufferIndex = metaRi + (fromIntegral startIndex - fromIntegral metaPos)
      metadataPtr = dataPtr `Bindgen.plusPtr` fromIntegral bufferIndex

  putStrLn $
    "[DEBUG] metaRi: "
      ++ show metaRi
      ++ " | metaPos: "
      ++ show metaPos
      ++ " | startIndex: "
      ++ show startIndex
      ++ " | calculated bufferIndex: "
      ++ show bufferIndex

  bs <- BS.packCStringLen (Foreign.castPtr metadataPtr, chunkSize)
  putStrLn $ "[DEBUG] Extracted raw bytes: " ++ show (BS.take 20 bs)
  pure bs

wuffsVersion :: IO BS.ByteString
wuffsVersion = pure C.wUFFS_VERSION_STRING
