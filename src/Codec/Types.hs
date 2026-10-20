module Codec.Types
  ( Err,
    WuffsError (..),
    liftWith,
    Metadata (..),
    MetadataBlock (..),
    Status (..),
  )
where

import Control.Exception
import Control.Monad.Trans.Except
import Data.ByteString
import HsBindgen.Runtime.Support qualified as Bindgen
import Prelude

data MetadataBlock
  = EXIF ByteString
  | XMP ByteString
  | ICCP ByteString
  deriving (Show, Eq)

newtype Metadata = Metadata [MetadataBlock]
  deriving (Show, Eq)

data Status = Status
  { isComplete :: Bool,
    isError :: Bool,
    isNote :: Bool,
    isOk :: Bool,
    isSuspension :: Bool,
    isTruncatedInputError :: Bool,
    message :: Maybe String
  }
  deriving (Show)

data WuffsError
  = FrameDecodeError String
  | ImageConfigDecodeError (Maybe String)
  | TellMeMoreError (Maybe String)
  | PixelBufferSetFromSliceError String
  | TryingToAdvanceAfterBuffer
  | UnsupportedImageType Bindgen.Int32
  | UnexpectedStatus
  deriving (Show)

instance Exception WuffsError

type Err a = ExceptT WuffsError IO a

liftWith :: ((a -> IO (Either WuffsError b)) -> IO (Either WuffsError b)) -> (a -> Err b) -> Err b
liftWith bracketFn action = ExceptT $ bracketFn (runExceptT . action)
