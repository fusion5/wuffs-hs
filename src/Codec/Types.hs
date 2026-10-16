module Codec.Types (Err, WuffsError (..), liftWith) where

import Control.Exception
import Control.Monad.Trans.Except
import HsBindgen.Runtime.Support qualified as Bindgen
import Prelude

data WuffsError
  = PNGDecodeError String
  | PNGFrameDecodeError String
  | PNGImageConfigDecodeError String
  | PNGImageTellMeMoreError String
  | TryingToAdvanceAfterBuffer
  | UnsupportedImageType Bindgen.Int32
  deriving (Show)

instance Exception WuffsError

type Err a = ExceptT WuffsError IO a

liftWith :: ((a -> IO (Either WuffsError b)) -> IO (Either WuffsError b)) -> (a -> Err b) -> Err b
liftWith bracketFn action = ExceptT $ bracketFn (runExceptT . action)
