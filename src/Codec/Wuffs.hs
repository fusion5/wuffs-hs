module Codec.Wuffs (readImageWithMetadata, decodeImageWithMetadata) where

import Codec.Picture hiding (decodeImageWithMetadata, readImageWithMetadata)
import Codec.Wuffs.Bindings.Generated.Safe qualified as C
import Data.ByteString qualified as BS
import Data.ByteString.Unsafe qualified as BSU (unsafeUseAsCStringLen)
import Data.Map qualified as M
import Data.Word
import Foreign qualified
import HsBindgen.Runtime.LibC qualified as Bindgen
-- import HsBindgen.Runtime.Prelude qualified as Bindgen
-- import HsBindgen.Runtime.PtrConst qualified as Bindgen
import HsBindgen.Runtime.Support qualified as Bindgen
import Prelude
import Control.Exception

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
  let ptrWord8 = Foreign.castPtr cStrPtr :: Bindgen.Ptr Word8
      cLen = fromIntegral len :: Bindgen.CSize
      closed = 1 :: Bindgen.CBool -- 1 = True (we have the complete image buffer)
  ioBuf <- C.wuffs_base__ptr_u8__reader ptrWord8 cLen closed
  withDecoder C.wuffs_png__decoder__alloc $ \decoderPtr -> do
    error "TODO: initialize decoder and decode image config"
