module Main (main) where

import Prelude
import Codec.Wuffs
-- import Control.Monad
-- import Data.ByteString.Lazy qualified as BSL
-- import System.Directory (doesFileExist)
-- import System.IO.Temp (withSystemTempFile)
import Test.Hspec

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "wuffs-hs" $ do
  describe "library inclusion" $ do
    it "The linked library version is non empty" $ do
      x <- wuffsVersion
      print x
      x `shouldNotBe` ""
