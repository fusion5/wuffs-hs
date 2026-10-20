module Main (main) where

import Codec.Picture hiding (decodeImageWithMetadata, readImageWithMetadata)
import Codec.Wuffs
import Control.Exception
import Data.ByteString qualified as BS
import Data.ByteString.Builder qualified as Builder (byteString, toLazyByteString, word16BE)
import Data.ByteString.Char8 qualified as BS8
import Data.Map
import Data.Time.Calendar (fromGregorian)
import Data.Time.LocalTime (LocalTime (..), TimeOfDay (..))
import Data.Word
import Graphics.HsExif qualified as HsExif
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
    it "Can decode a png file with EXIF metadata" $ do
      let sampleFile = "samples/liquid-crystal-phase-transition.png"
          expectedTime = LocalTime (fromGregorian 2022 10 01) (TimeOfDay 12 30 20)
      doesFileExist sampleFile >>= (`shouldBe` True)
      decodedEither <- readImageWithMetadata sampleFile
      case decodedEither of
        Right decoded -> do
          isImageRGBA8 (fst decoded) `shouldBe` True
          case snd decoded of
            Metadata [m1@(EXIF exif), m2] -> do
              typeOfMetadata m1 `shouldBe` TEXIF
              typeOfMetadata m2 `shouldBe` TICCP
              case parseRawExif exif of
                Left e -> expectationFailure $ "Parse raw exif failed:" <> e
                Right metadata -> do
                  member HsExif.orientation metadata `shouldBe` True
                  HsExif.getDateTimeOriginal metadata `shouldBe` Just expectedTime
            _ -> expectationFailure "Expected two metadata entries"
        Left err -> throw err
    it "Can decode a jpeg file with EXIF metadata" $ do
      let sampleFile = "samples/test.jpg"
      doesFileExist sampleFile >>= (`shouldBe` True)
      decodedEither <- readImageWithMetadata sampleFile
      case decodedEither of
        Right decoded -> do
          -- 2026 October: wuffs doesn't support JPEG metadata :(
          -- case snd decoded of
          --   Metadata [m] -> do
          --     typeOfMetadata m `shouldBe` TEXIF
          --   _ -> expectationFailure "Expected a metadata entry"
          isImageRGBA8 (fst decoded) `shouldBe` True
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

parseRawExif :: BS.ByteString -> Either String (Map HsExif.ExifTag HsExif.ExifValue)
parseRawExif rawExif =
  case HsExif.parseExif fakeJpeg of
    Left exifError -> Left $ "Exif parse error: " <> exifError
    Right metadataMap -> Right metadataMap
  where
    -- Length includes: 2 (Length itself) + 6 ("Exif\0\0") + Payload
    len = fromIntegral (2 + 6 + BS.length rawExif) :: Word16

    fakeJpeg =
      Builder.toLazyByteString $
        Builder.word16BE 0xFFD8 -- [JPEG SOI (2B)]
          <> Builder.word16BE 0xFFE1 -- [APP1 Marker (2B)]
          <> Builder.word16BE len -- [Length (2B)]
          <> Builder.byteString (BS8.pack "Exif\0\0") -- [Exif Identifier (6B)]
          <> Builder.byteString rawExif -- [Exif TIFF Payload]
