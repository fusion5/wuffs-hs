module Codec.Decoders
  ( Decoder,
    withDecoderByImageType,
    workbufferLength,
    decodeFrame,
    setReportMetadata,
    decodeImageConfig,
    tellMeMore,
  )
where

import Codec.Types
import Codec.Wuffs.Bindings.Generated qualified as C
import Codec.Wuffs.Bindings.Generated.Safe qualified as C
import Control.Exception
import Control.Monad.Trans.Except
import Data.Word
import Foreign qualified
import Foreign.C.ConstPtr (ConstPtr (..))
import HsBindgen.Runtime.Support qualified as Bindgen
import Prelude

decodeFrame ::
  Decoder ->
  Bindgen.Ptr C.Wuffs_base__pixel_buffer ->
  Bindgen.Ptr C.Wuffs_base__io_buffer ->
  C.Wuffs_base__pixel_blend ->
  C.Wuffs_base__slice_u8 ->
  Bindgen.Ptr C.Wuffs_base__decode_frame_options ->
  IO C.Wuffs_base__status
decodeFrame (DecoderPNG decoder AbstractDecoder {..}) = adDecodeFrame decoder
decodeFrame (DecoderWEBP decoder AbstractDecoder {..}) = adDecodeFrame decoder
decodeFrame (DecoderJPEG decoder AbstractDecoder {..}) = adDecodeFrame decoder
decodeFrame (DecoderGIF decoder AbstractDecoder {..}) = adDecodeFrame decoder

workbufferLength :: Decoder -> IO C.Wuffs_base__range_ii_u64
workbufferLength (DecoderPNG decoder AbstractDecoder {..}) = adWorkbufferLength $ ConstPtr decoder
workbufferLength (DecoderWEBP decoder AbstractDecoder {..}) = adWorkbufferLength $ ConstPtr decoder
workbufferLength (DecoderJPEG decoder AbstractDecoder {..}) = adWorkbufferLength $ ConstPtr decoder
workbufferLength (DecoderGIF decoder AbstractDecoder {..}) = adWorkbufferLength $ ConstPtr decoder

setReportMetadata :: Decoder -> Word32 -> Bindgen.CBool -> IO C.Wuffs_base__empty_struct
setReportMetadata (DecoderPNG decoder AbstractDecoder {..}) = adSetReportMetadata decoder
setReportMetadata (DecoderWEBP decoder AbstractDecoder {..}) = adSetReportMetadata decoder
setReportMetadata (DecoderJPEG decoder AbstractDecoder {..}) = adSetReportMetadata decoder
setReportMetadata (DecoderGIF decoder AbstractDecoder {..}) = adSetReportMetadata decoder

decodeImageConfig ::
  Decoder ->
  Bindgen.Ptr C.Wuffs_base__image_config ->
  Bindgen.Ptr C.Wuffs_base__io_buffer ->
  IO C.Wuffs_base__status
decodeImageConfig (DecoderPNG decoder AbstractDecoder {..}) = adDecodeImageConfig decoder
decodeImageConfig (DecoderWEBP decoder AbstractDecoder {..}) = adDecodeImageConfig decoder
decodeImageConfig (DecoderJPEG decoder AbstractDecoder {..}) = adDecodeImageConfig decoder
decodeImageConfig (DecoderGIF decoder AbstractDecoder {..}) = adDecodeImageConfig decoder

tellMeMore ::
  Decoder ->
  Bindgen.Ptr C.Wuffs_base__io_buffer ->
  Bindgen.Ptr C.Wuffs_base__more_information ->
  Bindgen.Ptr C.Wuffs_base__io_buffer ->
  IO C.Wuffs_base__status
tellMeMore (DecoderPNG decoder AbstractDecoder {..}) = adTellMeMore decoder
tellMeMore (DecoderWEBP decoder AbstractDecoder {..}) = adTellMeMore decoder
tellMeMore (DecoderJPEG decoder AbstractDecoder {..}) = adTellMeMore decoder
tellMeMore (DecoderGIF decoder AbstractDecoder {..}) = adTellMeMore decoder

data AbstractDecoder a = AbstractDecoder
  { adWorkbufferLength :: ConstPtr a -> IO C.Wuffs_base__range_ii_u64,
    adDecodeFrame ::
      Bindgen.Ptr a ->
      Bindgen.Ptr C.Wuffs_base__pixel_buffer ->
      Bindgen.Ptr C.Wuffs_base__io_buffer ->
      C.Wuffs_base__pixel_blend ->
      C.Wuffs_base__slice_u8 ->
      Bindgen.Ptr C.Wuffs_base__decode_frame_options ->
      IO C.Wuffs_base__status,
    adSetReportMetadata ::
      Bindgen.Ptr a ->
      Word32 ->
      Bindgen.CBool ->
      IO C.Wuffs_base__empty_struct,
    adDecodeImageConfig ::
      Bindgen.Ptr a ->
      Bindgen.Ptr C.Wuffs_base__image_config ->
      Bindgen.Ptr C.Wuffs_base__io_buffer ->
      IO C.Wuffs_base__status,
    adTellMeMore ::
      Bindgen.Ptr a ->
      Bindgen.Ptr C.Wuffs_base__io_buffer ->
      Bindgen.Ptr C.Wuffs_base__more_information ->
      Bindgen.Ptr C.Wuffs_base__io_buffer ->
      IO C.Wuffs_base__status
  }

data Decoder
  = DecoderPNG (Bindgen.Ptr C.Wuffs_png__decoder) (AbstractDecoder C.Wuffs_png__decoder)
  | DecoderWEBP (Bindgen.Ptr C.Wuffs_webp__decoder) (AbstractDecoder C.Wuffs_webp__decoder)
  | DecoderJPEG (Bindgen.Ptr C.Wuffs_jpeg__decoder) (AbstractDecoder C.Wuffs_jpeg__decoder)
  | DecoderGIF (Bindgen.Ptr C.Wuffs_gif__decoder) (AbstractDecoder C.Wuffs_gif__decoder)

withDecoderT :: IO (Bindgen.Ptr a) -> (Bindgen.Ptr a -> Err b) -> Err b
withDecoderT allocate = liftWith $ bracket allocate Foreign.free

withDecoderByImageType :: Bindgen.Int32 -> (Decoder -> Err a) -> Err a
withDecoderByImageType fourcc action
  | fromIntegral fourcc == C.wUFFS_BASE__FOURCC__PNG =
      withDecoderT C.wuffs_png__decoder__alloc $ \decoder ->
        action $
          DecoderPNG
            decoder
            ( AbstractDecoder
                { adWorkbufferLength = C.wuffs_png__decoder__workbuf_len,
                  adDecodeFrame = C.wuffs_png__decoder__decode_frame,
                  adSetReportMetadata = C.wuffs_png__decoder__set_report_metadata,
                  adDecodeImageConfig = C.wuffs_png__decoder__decode_image_config,
                  adTellMeMore = C.wuffs_png__decoder__tell_me_more
                }
            )
  | fromIntegral fourcc == C.wUFFS_BASE__FOURCC__WEBP =
      withDecoderT C.wuffs_webp__decoder__alloc $ \decoder ->
        action $
          DecoderWEBP
            decoder
            ( AbstractDecoder
                { adWorkbufferLength = C.wuffs_webp__decoder__workbuf_len,
                  adDecodeFrame = C.wuffs_webp__decoder__decode_frame,
                  adSetReportMetadata = C.wuffs_webp__decoder__set_report_metadata,
                  adDecodeImageConfig = C.wuffs_webp__decoder__decode_image_config,
                  adTellMeMore = C.wuffs_webp__decoder__tell_me_more
                }
            )
  | fromIntegral fourcc == C.wUFFS_BASE__FOURCC__JPEG =
      withDecoderT C.wuffs_jpeg__decoder__alloc $ \decoder ->
        action $
          DecoderJPEG
            decoder
            ( AbstractDecoder
                { adWorkbufferLength = C.wuffs_jpeg__decoder__workbuf_len,
                  adDecodeFrame = C.wuffs_jpeg__decoder__decode_frame,
                  adSetReportMetadata = C.wuffs_jpeg__decoder__set_report_metadata,
                  adDecodeImageConfig = C.wuffs_jpeg__decoder__decode_image_config,
                  adTellMeMore = C.wuffs_jpeg__decoder__tell_me_more
                }
            )
  | fromIntegral fourcc == C.wUFFS_BASE__FOURCC__GIF =
      withDecoderT C.wuffs_gif__decoder__alloc $ \decoder ->
        action $
          DecoderGIF
            decoder
            ( AbstractDecoder
                { adWorkbufferLength = C.wuffs_gif__decoder__workbuf_len,
                  adDecodeFrame = C.wuffs_gif__decoder__decode_frame,
                  adSetReportMetadata = C.wuffs_gif__decoder__set_report_metadata,
                  adDecodeImageConfig = C.wuffs_gif__decoder__decode_image_config,
                  adTellMeMore = C.wuffs_gif__decoder__tell_me_more
                }
            )
  | otherwise = throwE $ UnsupportedImageType fourcc
