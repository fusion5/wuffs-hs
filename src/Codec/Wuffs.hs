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
import Data.Word
import Foreign qualified
import Foreign.C.ConstPtr (ConstPtr (..))
-- import HsBindgen.Runtime.LibC qualified as Bindgen
-- import HsBindgen.Runtime.Prelude
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
readImageWithMetadata = error "TODO"

withDecoder :: IO (Bindgen.Ptr a) -> (Bindgen.Ptr a -> IO b) -> IO b
withDecoder allocate = bracket allocate Foreign.free

decodeImageWithMetadata :: BS.ByteString -> IO (Either String (DynamicImage, Metadata))
decodeImageWithMetadata bs = BSU.unsafeUseAsCStringLen bs $ \(cStrPtr, len) -> do
  ioBuf <- C.wuffs_base__ptr_u8__reader (Foreign.castPtr cStrPtr) (fromIntegral len) 1
  withDecoder C.wuffs_png__decoder__alloc $ \decoderPtr -> do
    nullImgCfg <- C.wuffs_base__null_image_config
    Bindgen.with nullImgCfg $ \imgCfgPtr -> do
      Bindgen.with ioBuf $ \ioBufPtr -> do
        status <- C.wuffs_png__decoder__decode_image_config decoderPtr imgCfgPtr ioBufPtr
        isErr <- Bindgen.with status $ \statusPtr ->
          C.wuffs_base__status__is_error (ConstPtr statusPtr)
        error $ "isErr = " <> show isErr

wuffsVersion :: IO BS.ByteString
wuffsVersion = pure C.wUFFS_VERSION_STRING
