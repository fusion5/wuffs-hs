module Codec.Wuffs (readImageWithMetadata, decodeImageWithMetadata) where

import Codec.Picture hiding (decodeImageWithMetadata, readImageWithMetadata)
import Data.ByteString qualified as BS
import Data.Map qualified as M
import Data.Word
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

decodeImageWithMetadata :: BS.ByteString -> Either String DynamicImage
decodeImageWithMetadata = error "TODO"
