module Main (main) where

-- import Control.Monad
-- import Data.ByteString.Lazy qualified as BSL

-- import System.IO.Temp (withSystemTempFile)

import Codec.Picture hiding (decodeImageWithMetadata, readImageWithMetadata)
import Codec.Wuffs
import System.Directory (doesFileExist)
import Test.Hspec
import Prelude
import Control.Exception

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
    it "Can decode a transparent png file" $ do
      let sampleFile = "samples/demo-transparent.png"
      doesFileExist sampleFile >>= (`shouldBe` True)
      decodedEither <- readImageWithMetadata sampleFile
      case decodedEither of
        Right decoded -> do
          putStrLn $ describeImage $ fst decoded
          print $ snd decoded
        Left err -> throw err
    it "Can decode a png file with EXIF metadata" $ do
      let sampleFile = "samples/liquid-crystal-phase-transition.png"
      doesFileExist sampleFile >>= (`shouldBe` True)
      decodedEither <- readImageWithMetadata sampleFile
      case decodedEither of
        Right decoded -> do
          putStrLn $ describeImage $ fst decoded
          print $ snd decoded
        Left err -> throw err
    it "Can decode a jpeg file" $ do
      let sampleFile = "samples/test.jpg"
      doesFileExist sampleFile >>= (`shouldBe` True)
      decodedEither <- readImageWithMetadata sampleFile
      case decodedEither of
        Right decoded -> do
          putStrLn $ describeImage $ fst decoded
          print $ snd decoded
        Left err -> throw err
    it "Can decode an animated gif file" $ do
      let sampleFile = "samples/sample-animated.gif"
      doesFileExist sampleFile >>= (`shouldBe` True)
      decodedEither <- readImageWithMetadata sampleFile
      case decodedEither of
        Right decoded -> do
          putStrLn $ describeImage $ fst decoded
          print $ snd decoded
        Left err -> throw err
    it "Can decode a webp file" $ do
      let sampleFile = "samples/lego.webp"
      doesFileExist sampleFile >>= (`shouldBe` True)
      decodedEither <- readImageWithMetadata sampleFile
      case decodedEither of
        Right decoded -> do
          putStrLn $ describeImage $ fst decoded
          print $ snd decoded
        Left err -> throw err
