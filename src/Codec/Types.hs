module Codec.Types (Err, WuffsError (..)) where

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
