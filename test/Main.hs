module Main (main) where

-- import Control.Monad
-- import Data.ByteString.Lazy qualified as BSL

-- import System.IO.Temp (withSystemTempFile)

import Codec.Picture hiding (decodeImageWithMetadata, readImageWithMetadata)
import Codec.Wuffs
import System.Directory (doesFileExist)
import Test.Hspec
import Prelude

main :: IO ()
main = hspec spec

describeImage :: DynamicImage -> String
describeImage dimg = case dimg of
  ImageY8 img -> "8-bit Greyscale image: " ++ show (imageWidth img) ++ "x" ++ show (imageHeight img)
  ImageRGB8 img -> "24-bit Truecolor RGB image: " ++ show (imageWidth img) ++ "x" ++ show (imageHeight img)
  ImageRGBA8 img -> "32-bit Truecolor RGBA image (with alpha): " ++ show (imageWidth img) ++ "x" ++ show (imageHeight img)
  ImageYCbCr8 img -> "JPEG YCbCr image: " ++ show (imageWidth img) ++ "x" ++ show (imageHeight img)
  _ -> "Another supported JuicyPixels format"

spec :: Spec
spec = describe "wuffs-hs" $ do
  describe "library inclusion" $ do
    it "The linked library version is non empty" $ do
      x <- wuffsVersion
      x `shouldNotBe` ""
    it "Can decode a png file" $ do
      let sampleFile = "samples/demo.png"
      doesFileExist sampleFile >>= (`shouldBe` True)
      decodedEither <- readImageWithMetadata sampleFile
      case decodedEither of
        Right decoded -> putStrLn $ describeImage $ fst decoded
        Left err -> print $ show err
      pure ()
