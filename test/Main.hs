module Main (main) where

-- import Control.Monad
-- import Data.ByteString.Lazy qualified as BSL

-- import System.IO.Temp (withSystemTempFile)

import Codec.Picture hiding (decodeImageWithMetadata, readImageWithMetadata)
import Codec.Wuffs
import Control.Exception
import System.Directory (doesFileExist)
import Test.Hspec
import Prelude

main :: IO ()
main = hspec spec

isImageRGBA8 :: DynamicImage -> Bool
isImageRGBA8 (ImageRGBA8 _) = True
isImageRGBA8 _ = False

data MetadataBlockType = TEXIF | TXMP | TICCP deriving (Show, Eq)

typeOfMetadata :: MetadataBlock -> MetadataBlockType
typeOfMetadata EXIF {} = TEXIF
typeOfMetadata XMP {} = TXMP
typeOfMetadata ICCP {} = TICCP

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
          isImageRGBA8 (fst decoded) `shouldBe` True
          snd decoded `shouldBe` Metadata []
        Left err -> throw err
    fit "Can decode a png file with EXIF metadata" $ do
      let sampleFile = "samples/liquid-crystal-phase-transition.png"
      doesFileExist sampleFile >>= (`shouldBe` True)
      decodedEither <- readImageWithMetadata sampleFile
      case decodedEither of
        Right decoded -> do
          isImageRGBA8 (fst decoded) `shouldBe` True
          case snd decoded of
            Metadata [m1, m2] -> do
              typeOfMetadata m1 `shouldBe` TEXIF
              typeOfMetadata m2 `shouldBe` TICCP
            _ -> expectationFailure "Expected two metadata entries"
        Left err -> throw err
    fit "Can decode a jpeg file with EXIF metadata" $ do
      let sampleFile = "samples/test.jpg"
      doesFileExist sampleFile >>= (`shouldBe` True)
      decodedEither <- readImageWithMetadata sampleFile
      case decodedEither of
        Right decoded -> do
          isImageRGBA8 (fst decoded) `shouldBe` True
          case snd decoded of
            Metadata [m] -> do
              typeOfMetadata m `shouldBe` TEXIF
            _ -> expectationFailure "Expected a metadata entry"
        Left err -> throw err
    it "Can decode an animated gif file" $ do
      let sampleFile = "samples/sample-animated.gif"
      doesFileExist sampleFile >>= (`shouldBe` True)
      decodedEither <- readImageWithMetadata sampleFile
      case decodedEither of
        Right decoded -> do
          isImageRGBA8 (fst decoded) `shouldBe` True
          case snd decoded of
            Metadata [m1] -> do
              typeOfMetadata m1 `shouldBe` TXMP
            _ -> expectationFailure "Expected two metadata entries"
        Left err -> throw err
    it "Can decode a webp file" $ do
      let sampleFile = "samples/lego.webp"
      doesFileExist sampleFile >>= (`shouldBe` True)
      decodedEither <- readImageWithMetadata sampleFile
      case decodedEither of
        Right decoded -> do
          isImageRGBA8 (fst decoded) `shouldBe` True
          snd decoded `shouldBe` Metadata []
        Left err -> throw err
