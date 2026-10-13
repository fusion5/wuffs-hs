{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UnboxedTuples #-}
{-# LANGUAGE UndecidableInstances #-}

module Codec.Wuffs.Bindings.Generated
    ( Codec.Wuffs.Bindings.Generated.wUFFS_VERSION
    , Codec.Wuffs.Bindings.Generated.wUFFS_VERSION_MAJOR
    , Codec.Wuffs.Bindings.Generated.wUFFS_VERSION_MINOR
    , Codec.Wuffs.Bindings.Generated.wUFFS_VERSION_PATCH
    , Codec.Wuffs.Bindings.Generated.wUFFS_VERSION_PRE_RELEASE_LABEL
    , Codec.Wuffs.Bindings.Generated.wUFFS_VERSION_BUILD_METADATA_COMMIT_COUNT
    , Codec.Wuffs.Bindings.Generated.wUFFS_VERSION_BUILD_METADATA_COMMIT_DATE
    , Codec.Wuffs.Bindings.Generated.wUFFS_VERSION_STRING
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__empty_struct(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__utility(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__vtable(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__status(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__result_f64(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__result_i64(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__result_u64(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__transform__output(..)
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__ABXR
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__ABXS
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__BGCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__BMP
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__BRTL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__BZ2
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__CBOR
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__CHRM
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__CSS
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__EPS
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__ETC2
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__EXIF
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__FLAC
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__GAMA
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__GIF
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__GZ
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__HEIF
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__HTML
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__ICCP
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__ICO
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__ICVG
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__INI
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__JPEG
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__JS
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__JSON
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__JWCC
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__KVP
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__KVPK
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__KVPV
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__LZ4
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__LZIP
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__LZMA
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__MD
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__MTIM
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__MP3
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__NIE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__NPBM
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__OFS2
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__OTF
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__PDF
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__PHYD
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__PNG
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__PS
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__QOI
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__RAC
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__RAW
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__RIFF
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__RIGL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__SNPY
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__SRGB
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__SVG
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__TAR
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__TEXT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__TGA
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__TH
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__TIFF
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__TOML
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__WAVE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__WBMP
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__WEBP
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__WOFF
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__XML
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__XMP
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__XZ
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__ZIP
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__ZLIB
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__FOURCC__ZSTD
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__QUIRK_IGNORE_CHECKSUM
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__QUIRK_QUALITY
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__flicks(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__multiply_u64__output(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__bitvec256(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__optional_u63(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__slice_u8(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__slice_u16(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__slice_u32(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__slice_u64(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__table_u8(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__table_u16(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__table_u32(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__table_u64(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__range_ii_u32(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__range_ie_u32(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__range_ii_u64(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__range_ie_u64(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__rect_ii_u32(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__rect_ie_u32(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__more_information(..)
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__MORE_INFORMATION__FLAVOR__IO_REDIRECT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__MORE_INFORMATION__FLAVOR__IO_SEEK
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__MORE_INFORMATION__FLAVOR__METADATA_RAW_PASSTHROUGH
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__MORE_INFORMATION__FLAVOR__METADATA_RAW_TRANSFORM
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__MORE_INFORMATION__FLAVOR__METADATA_PARSED
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__WHITE_X
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__WHITE_Y
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__RED_X
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__RED_Y
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__GREEN_X
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__GREEN_Y
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__BLUE_X
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__BLUE_Y
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__SRGB_RENDERING_INTENT__PERCEPTUAL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__SRGB_RENDERING_INTENT__RELATIVE_COLORIMETRIC
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__SRGB_RENDERING_INTENT__SATURATION
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__SRGB_RENDERING_INTENT__ABSOLUTE_COLORIMETRIC
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__io_buffer_meta(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__io_buffer(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__token(..)
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__LENGTH__MAX_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VALUE__SHIFT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VALUE_EXTENSION__SHIFT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VALUE_MAJOR__SHIFT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VALUE_MINOR__SHIFT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VALUE_BASE_CATEGORY__SHIFT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VALUE_BASE_DETAIL__SHIFT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__CONTINUED__SHIFT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__LENGTH__SHIFT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VALUE_EXTENSION__NUM_BITS
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBC__FILLER
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBC__STRUCTURE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBC__STRING
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBC__UNICODE_CODE_POINT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBC__LITERAL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBC__NUMBER
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBC__INLINE_INTEGER_SIGNED
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBC__INLINE_INTEGER_UNSIGNED
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__FILLER__PUNCTUATION
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__FILLER__COMMENT_BLOCK
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__FILLER__COMMENT_LINE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__FILLER__COMMENT_ANY
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRUCTURE__PUSH
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRUCTURE__POP
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRUCTURE__FROM_NONE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRUCTURE__FROM_LIST
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRUCTURE__FROM_DICT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRUCTURE__TO_NONE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRUCTURE__TO_LIST
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRUCTURE__TO_DICT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__DEFINITELY_UTF_8
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__CHAIN_MUST_BE_UTF_8
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__CHAIN_SHOULD_BE_UTF_8
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__DEFINITELY_ASCII
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__CHAIN_MUST_BE_ASCII
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__CHAIN_SHOULD_BE_ASCII
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_0_DST_1_SRC_DROP
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_1_DST_1_SRC_COPY
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_1_DST_2_SRC_HEXADECIMAL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_1_DST_4_SRC_BACKSLASH_X
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_3_DST_4_SRC_BASE_64_STD
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_3_DST_4_SRC_BASE_64_URL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_4_DST_5_SRC_ASCII_85
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_5_DST_8_SRC_BASE_32_HEX
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_5_DST_8_SRC_BASE_32_STD
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__LITERAL__UNDEFINED
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__LITERAL__NULL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__LITERAL__FALSE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__LITERAL__TRUE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_FLOATING_POINT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_INTEGER_SIGNED
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_INTEGER_UNSIGNED
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_NEG_INF
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_POS_INF
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_NEG_NAN
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_POS_NAN
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_BINARY_BIG_ENDIAN
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_BINARY_LITTLE_ENDIAN
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_TEXT
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_IGNORE_FIRST_BYTE
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__slice_token(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__token_buffer_meta(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__token_buffer(..)
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__IMAGE__DIMENSION_MAX_INCL
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__color_u32_argb_premul(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_blend(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_alpha_transparency(..)
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__OPAQUE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__NONPREMULTIPLIED_ALPHA
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__PREMULTIPLIED_ALPHA
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__BINARY_ALPHA
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_coloration(..)
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_COLORATION__NONE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_COLORATION__GRAY
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_COLORATION__RICH
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__NUM_PLANES_MAX
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__NUM_PLANES_MAX_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__INDEXED__INDEX_PLANE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__INDEXED__COLOR_PLANE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__INDEXED__PALETTE_BYTE_LENGTH
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_format(..)
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__INVALID
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__A
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__Y
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__Y_16LE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__Y_16BE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__YA_NONPREMUL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__YA_PREMUL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__YCBCR
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__YCBCRA_NONPREMUL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__YCBCRK
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__YCOCG
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__YCOCGA_NONPREMUL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__YCOCGK
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__INDEXED__BGRA_NONPREMUL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__INDEXED__BGRA_PREMUL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__INDEXED__BGRA_BINARY
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__BGR_565
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__BGR
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__BGRA_NONPREMUL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__BGRA_NONPREMUL_4X16LE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__BGRA_PREMUL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__BGRA_PREMUL_4X16LE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__BGRA_BINARY
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__BGRX
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__RGB
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__RGBA_NONPREMUL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__RGBA_NONPREMUL_4X16LE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__RGBA_PREMUL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__RGBA_PREMUL_4X16LE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__RGBA_BINARY
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__RGBX
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__CMY
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_FORMAT__CMYK
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_subsampling(..)
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_SUBSAMPLING__NONE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_SUBSAMPLING__444
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_SUBSAMPLING__440
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_SUBSAMPLING__422
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_SUBSAMPLING__420
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_SUBSAMPLING__411
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__PIXEL_SUBSAMPLING__410
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_config__struct_private_impl(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_config(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__image_config__struct_private_impl(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__image_config(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__animation_disposal(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__frame_config__struct_private_impl(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__frame_config(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_buffer__struct_private_impl(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_buffer(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__decode_frame_options__struct_private_impl(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__decode_frame_options(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_swizzler__func_Aux(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_swizzler__func(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_swizzler__transparent_black_func_Aux(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_swizzler__transparent_black_func(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_swizzler__struct_private_impl(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__pixel_swizzler(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__lossy_value_u16(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__lossy_value_u32(..)
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__I64__BYTE_LENGTH__MAX_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__U64__BYTE_LENGTH__MAX_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UNICODE_CODE_POINT__MIN_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UNICODE_CODE_POINT__MAX_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UNICODE_REPLACEMENT_CHARACTER
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UNICODE_SURROGATE__MIN_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UNICODE_SURROGATE__MAX_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__ASCII__MIN_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__ASCII__MAX_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UTF_8__BYTE_LENGTH__MIN_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UTF_8__BYTE_LENGTH__MAX_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UTF_8__BYTE_LENGTH_1__CODE_POINT__MIN_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UTF_8__BYTE_LENGTH_1__CODE_POINT__MAX_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UTF_8__BYTE_LENGTH_2__CODE_POINT__MIN_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UTF_8__BYTE_LENGTH_2__CODE_POINT__MAX_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UTF_8__BYTE_LENGTH_3__CODE_POINT__MIN_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UTF_8__BYTE_LENGTH_3__CODE_POINT__MAX_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UTF_8__BYTE_LENGTH_4__CODE_POINT__MIN_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_BASE__UTF_8__BYTE_LENGTH_4__CODE_POINT__MAX_INCL
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__utf_8__next__output(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__hasher_u32__func_ptrs(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__hasher_u32
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__hasher_u64__func_ptrs(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__hasher_u64
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__hasher_bitvec256__func_ptrs(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__hasher_bitvec256
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__image_decoder__func_ptrs(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__image_decoder
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__io_transformer__func_ptrs(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__io_transformer
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__token_decoder__func_ptrs(..)
    , Codec.Wuffs.Bindings.Generated.Wuffs_base__token_decoder
    , Codec.Wuffs.Bindings.Generated.Wuffs_adler32__hasher
    , Codec.Wuffs.Bindings.Generated.wUFFS_BMP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_bmp__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_BZIP2__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_BZIP2__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_bzip2__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_CBOR__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_CBOR__DECODER_DEPTH_MAX_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_CBOR__DECODER_DST_TOKEN_BUFFER_LENGTH_MIN_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_CBOR__DECODER_SRC_IO_BUFFER_LENGTH_MIN_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_CBOR__TOKEN_VALUE_MAJOR
    , Codec.Wuffs.Bindings.Generated.wUFFS_CBOR__TOKEN_VALUE_MINOR__DETAIL_MASK
    , Codec.Wuffs.Bindings.Generated.wUFFS_CBOR__TOKEN_VALUE_MINOR__MINUS_1_MINUS_X
    , Codec.Wuffs.Bindings.Generated.wUFFS_CBOR__TOKEN_VALUE_MINOR__SIMPLE_VALUE
    , Codec.Wuffs.Bindings.Generated.wUFFS_CBOR__TOKEN_VALUE_MINOR__TAG
    , Codec.Wuffs.Bindings.Generated.Wuffs_cbor__decoder
    , Codec.Wuffs.Bindings.Generated.Wuffs_crc32__ieee_hasher
    , Codec.Wuffs.Bindings.Generated.Wuffs_crc64__ecma_hasher
    , Codec.Wuffs.Bindings.Generated.wUFFS_DEFLATE__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_DEFLATE__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_deflate__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_ETC2__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_etc2__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_GIF__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_GIF__QUIRK_DELAY_NUM_DECODED_FRAMES
    , Codec.Wuffs.Bindings.Generated.wUFFS_GIF__QUIRK_FIRST_FRAME_LOCAL_PALETTE_MEANS_BLACK_BACKGROUND
    , Codec.Wuffs.Bindings.Generated.wUFFS_GIF__QUIRK_HONOR_BACKGROUND_COLOR
    , Codec.Wuffs.Bindings.Generated.wUFFS_GIF__QUIRK_IGNORE_TOO_MUCH_PIXEL_DATA
    , Codec.Wuffs.Bindings.Generated.wUFFS_GIF__QUIRK_IMAGE_BOUNDS_ARE_STRICT
    , Codec.Wuffs.Bindings.Generated.wUFFS_GIF__QUIRK_REJECT_EMPTY_FRAME
    , Codec.Wuffs.Bindings.Generated.wUFFS_GIF__QUIRK_REJECT_EMPTY_PALETTE
    , Codec.Wuffs.Bindings.Generated.Wuffs_gif__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_GZIP__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_GZIP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_gzip__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_JPEG__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_JPEG__QUIRK_REJECT_PROGRESSIVE_JPEGS
    , Codec.Wuffs.Bindings.Generated.Wuffs_jpeg__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__DECODER_DEPTH_MAX_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__DECODER_DST_TOKEN_BUFFER_LENGTH_MIN_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__DECODER_SRC_IO_BUFFER_LENGTH_MIN_INCL
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_ASCII_CONTROL_CODES
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_A
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_CAPITAL_U
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_E
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_NEW_LINE
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_QUESTION_MARK
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_SINGLE_QUOTE
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_V
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_X_AS_CODE_POINTS
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_ZERO
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_COMMENT_BLOCK
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_COMMENT_LINE
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_EXTRA_COMMA
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_INF_NAN_NUMBERS
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_LEADING_ASCII_RECORD_SEPARATOR
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_LEADING_UNICODE_BYTE_ORDER_MARK
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_ALLOW_TRAILING_FILLER
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_EXPECT_TRAILING_NEW_LINE_OR_EOF
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_JSON_POINTER_ALLOW_TILDE_N_TILDE_R_TILDE_T
    , Codec.Wuffs.Bindings.Generated.wUFFS_JSON__QUIRK_REPLACE_INVALID_UNICODE
    , Codec.Wuffs.Bindings.Generated.Wuffs_json__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_LZMA__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_LZMA__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_LZMA__QUIRK_ALLOW_NON_ZERO_INITIAL_BYTE
    , Codec.Wuffs.Bindings.Generated.wUFFS_LZMA__QUIRK_FORMAT_EXTENSION
    , Codec.Wuffs.Bindings.Generated.Wuffs_lzma__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_LZIP__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_LZIP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_lzip__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_LZW__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_LZW__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_LZW__QUIRK_LITERAL_WIDTH_PLUS_ONE
    , Codec.Wuffs.Bindings.Generated.Wuffs_lzw__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_NETPBM__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_netpbm__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_NIE__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_nie__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_ZLIB__QUIRK_JUST_RAW_DEFLATE
    , Codec.Wuffs.Bindings.Generated.wUFFS_ZLIB__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_ZLIB__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_zlib__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_PNG__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_PNG__DECODER_SRC_IO_BUFFER_LENGTH_MIN_INCL
    , Codec.Wuffs.Bindings.Generated.Wuffs_png__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_QOI__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_qoi__decoder
    , Codec.Wuffs.Bindings.Generated.Wuffs_sha256__hasher
    , Codec.Wuffs.Bindings.Generated.wUFFS_TARGA__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_targa__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_THUMBHASH__QUIRK_JUST_RAW_THUMBHASH
    , Codec.Wuffs.Bindings.Generated.wUFFS_THUMBHASH__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_thumbhash__decoder
    , Codec.Wuffs.Bindings.Generated.Wuffs_vp8__placeholder
    , Codec.Wuffs.Bindings.Generated.wUFFS_WBMP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_wbmp__decoder
    , Codec.Wuffs.Bindings.Generated.wUFFS_WEBP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_webp__decoder
    , Codec.Wuffs.Bindings.Generated.Wuffs_xxhash32__hasher
    , Codec.Wuffs.Bindings.Generated.Wuffs_xxhash64__hasher
    , Codec.Wuffs.Bindings.Generated.wUFFS_XZ__QUIRK_DECODE_STANDALONE_CONCATENATED_STREAMS
    , Codec.Wuffs.Bindings.Generated.wUFFS_XZ__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.wUFFS_XZ__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE
    , Codec.Wuffs.Bindings.Generated.Wuffs_xz__decoder
    )
  where

import qualified HsBindgen.Runtime.ConstantArray as CA
import qualified HsBindgen.Runtime.HasCField as HasCField
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.Marshal as Marshal
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import qualified HsBindgen.Runtime.Struct as Struct
import qualified HsBindgen.Runtime.Support as BG
import qualified HsBindgen.Runtime.Support.CompatHasField as BG.CompatHasField
import Prelude ((<*>), (>>), Bounded, Enum, Eq, IO, Int, Integral, Num, Ord, Read, Real, Show, fmap, pure, type (~))

{-| __C declaration:__ @macro WUFFS_VERSION@

    __defined at:__ @wuffs\/wuffs-v0.4.c 84:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_VERSION :: BG.CInt
wUFFS_VERSION = (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_VERSION_MAJOR@

    __defined at:__ @wuffs\/wuffs-v0.4.c 85:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_VERSION_MAJOR :: BG.CInt
wUFFS_VERSION_MAJOR = (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_VERSION_MINOR@

    __defined at:__ @wuffs\/wuffs-v0.4.c 86:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_VERSION_MINOR :: BG.CInt
wUFFS_VERSION_MINOR = (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_VERSION_PATCH@

    __defined at:__ @wuffs\/wuffs-v0.4.c 87:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_VERSION_PATCH :: BG.CInt
wUFFS_VERSION_PATCH = (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_VERSION_PRE_RELEASE_LABEL@

    __C literal:__ @\"unsupported.snapshot\"@

    __defined at:__ @wuffs\/wuffs-v0.4.c 88:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_VERSION_PRE_RELEASE_LABEL :: BG.ByteString
wUFFS_VERSION_PRE_RELEASE_LABEL =
  BG.pack [0x75, 0x6E, 0x73, 0x75, 0x70, 0x70, 0x6F, 0x72, 0x74, 0x65, 0x64, 0x2E, 0x73, 0x6E, 0x61, 0x70, 0x73, 0x68, 0x6F, 0x74]

{-| __C declaration:__ @macro WUFFS_VERSION_BUILD_METADATA_COMMIT_COUNT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 89:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_VERSION_BUILD_METADATA_COMMIT_COUNT :: BG.CInt
wUFFS_VERSION_BUILD_METADATA_COMMIT_COUNT =
  (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_VERSION_BUILD_METADATA_COMMIT_DATE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 90:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_VERSION_BUILD_METADATA_COMMIT_DATE :: BG.CInt
wUFFS_VERSION_BUILD_METADATA_COMMIT_DATE =
  (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_VERSION_STRING@

    __C literal:__ @\"0.0.0+0.00000000\"@

    __defined at:__ @wuffs\/wuffs-v0.4.c 91:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_VERSION_STRING :: BG.ByteString
wUFFS_VERSION_STRING =
  BG.pack [0x30, 0x2E, 0x30, 0x2E, 0x30, 0x2B, 0x30, 0x2E, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30]

{-| __C declaration:__ @struct wuffs_base__empty_struct__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 539:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__empty_struct = Wuffs_base__empty_struct
  { wuffs_base__empty_struct_private_impl :: HsBindgen.Runtime.LibC.Word8
    {- ^ __C declaration:__ @private_impl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 549:11@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__empty_struct where

  staticSizeOf = \_ -> (1 :: Int)

  staticAlignment = \_ -> (1 :: Int)

instance Marshal.ReadRaw Wuffs_base__empty_struct where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__empty_struct
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__empty_struct_private_impl") ptr0

instance Marshal.WriteRaw Wuffs_base__empty_struct where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__empty_struct wuffs_base__empty_struct_private_impl2 ->
            HasCField.writeRaw (BG.Proxy @"wuffs_base__empty_struct_private_impl") ptr0 wuffs_base__empty_struct_private_impl2

deriving via Marshal.EquivStorable Wuffs_base__empty_struct instance BG.Storable Wuffs_base__empty_struct

deriving via Struct.IsStructViaReadRaw Wuffs_base__empty_struct instance Struct.IsStruct Wuffs_base__empty_struct

{-| __C declaration:__ @private_impl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 549:11@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word8
         ) => BG.CompatHasField.HasField "wuffs_base__empty_struct_private_impl" Wuffs_base__empty_struct ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__empty_struct {wuffs_base__empty_struct_private_impl = y1}
      , BG.getField @"wuffs_base__empty_struct_private_impl" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word8
         ) => BG.HasField "wuffs_base__empty_struct_private_impl" (BG.Ptr Wuffs_base__empty_struct) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__empty_struct_private_impl")

instance HasCField.HasCField Wuffs_base__empty_struct "wuffs_base__empty_struct_private_impl" where

  type CFieldType Wuffs_base__empty_struct "wuffs_base__empty_struct_private_impl" =
    HsBindgen.Runtime.LibC.Word8

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct wuffs_base__utility__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 561:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__utility = Wuffs_base__utility
  { wuffs_base__utility_private_impl :: HsBindgen.Runtime.LibC.Word8
    {- ^ __C declaration:__ @private_impl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 571:11@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__utility where

  staticSizeOf = \_ -> (1 :: Int)

  staticAlignment = \_ -> (1 :: Int)

instance Marshal.ReadRaw Wuffs_base__utility where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__utility
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__utility_private_impl") ptr0

instance Marshal.WriteRaw Wuffs_base__utility where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__utility wuffs_base__utility_private_impl2 ->
            HasCField.writeRaw (BG.Proxy @"wuffs_base__utility_private_impl") ptr0 wuffs_base__utility_private_impl2

deriving via Marshal.EquivStorable Wuffs_base__utility instance BG.Storable Wuffs_base__utility

deriving via Struct.IsStructViaReadRaw Wuffs_base__utility instance Struct.IsStruct Wuffs_base__utility

{-| __C declaration:__ @private_impl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 571:11@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word8
         ) => BG.CompatHasField.HasField "wuffs_base__utility_private_impl" Wuffs_base__utility ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__utility {wuffs_base__utility_private_impl = y1}
      , BG.getField @"wuffs_base__utility_private_impl" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word8
         ) => BG.HasField "wuffs_base__utility_private_impl" (BG.Ptr Wuffs_base__utility) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__utility_private_impl")

instance HasCField.HasCField Wuffs_base__utility "wuffs_base__utility_private_impl" where

  type CFieldType Wuffs_base__utility "wuffs_base__utility_private_impl" =
    HsBindgen.Runtime.LibC.Word8

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct wuffs_base__vtable__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 574:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__vtable = Wuffs_base__vtable
  { wuffs_base__vtable_vtable_name :: PtrConst.PtrConst BG.CChar
    {- ^ __C declaration:__ @vtable_name@

         __defined at:__ @wuffs\/wuffs-v0.4.c 575:15@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__vtable_function_pointers :: PtrConst.PtrConst BG.Void
    {- ^ __C declaration:__ @function_pointers@

         __defined at:__ @wuffs\/wuffs-v0.4.c 576:15@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__vtable where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__vtable where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__vtable
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__vtable_vtable_name") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__vtable_function_pointers") ptr0

instance Marshal.WriteRaw Wuffs_base__vtable where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__vtable
            wuffs_base__vtable_vtable_name2
            wuffs_base__vtable_function_pointers3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__vtable_vtable_name") ptr0 wuffs_base__vtable_vtable_name2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__vtable_function_pointers") ptr0 wuffs_base__vtable_function_pointers3

deriving via Marshal.EquivStorable Wuffs_base__vtable instance BG.Storable Wuffs_base__vtable

deriving via Struct.IsStructViaReadRaw Wuffs_base__vtable instance Struct.IsStruct Wuffs_base__vtable

{-| __C declaration:__ @vtable_name@

    __defined at:__ @wuffs\/wuffs-v0.4.c 575:15@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ PtrConst.PtrConst BG.CChar
         ) => BG.CompatHasField.HasField "wuffs_base__vtable_vtable_name" Wuffs_base__vtable ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__vtable { wuffs_base__vtable_vtable_name = y1
                             , wuffs_base__vtable_function_pointers = BG.getField @"wuffs_base__vtable_function_pointers" x0
                             }
      , BG.getField @"wuffs_base__vtable_vtable_name" x0
      )

instance ( ty ~ PtrConst.PtrConst BG.CChar
         ) => BG.HasField "wuffs_base__vtable_vtable_name" (BG.Ptr Wuffs_base__vtable) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__vtable_vtable_name")

instance HasCField.HasCField Wuffs_base__vtable "wuffs_base__vtable_vtable_name" where

  type CFieldType Wuffs_base__vtable "wuffs_base__vtable_vtable_name" =
    PtrConst.PtrConst BG.CChar

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @function_pointers@

    __defined at:__ @wuffs\/wuffs-v0.4.c 576:15@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ PtrConst.PtrConst BG.Void
         ) => BG.CompatHasField.HasField "wuffs_base__vtable_function_pointers" Wuffs_base__vtable ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__vtable { wuffs_base__vtable_function_pointers = y1
                             , wuffs_base__vtable_vtable_name = BG.getField @"wuffs_base__vtable_vtable_name" x0
                             }
      , BG.getField @"wuffs_base__vtable_function_pointers" x0
      )

instance ( ty ~ PtrConst.PtrConst BG.Void
         ) => BG.HasField "wuffs_base__vtable_function_pointers" (BG.Ptr Wuffs_base__vtable) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__vtable_function_pointers")

instance HasCField.HasCField Wuffs_base__vtable "wuffs_base__vtable_function_pointers" where

  type CFieldType Wuffs_base__vtable "wuffs_base__vtable_function_pointers" =
    PtrConst.PtrConst BG.Void

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @struct wuffs_base__status__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 582:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__status = Wuffs_base__status
  { wuffs_base__status_repr :: PtrConst.PtrConst BG.CChar
    {- ^ __C declaration:__ @repr@

         __defined at:__ @wuffs\/wuffs-v0.4.c 583:15@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__status where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__status where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__status
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__status_repr") ptr0

instance Marshal.WriteRaw Wuffs_base__status where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__status wuffs_base__status_repr2 ->
            HasCField.writeRaw (BG.Proxy @"wuffs_base__status_repr") ptr0 wuffs_base__status_repr2

deriving via Marshal.EquivStorable Wuffs_base__status instance BG.Storable Wuffs_base__status

deriving via Struct.IsStructViaReadRaw Wuffs_base__status instance Struct.IsStruct Wuffs_base__status

{-| __C declaration:__ @repr@

    __defined at:__ @wuffs\/wuffs-v0.4.c 583:15@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ PtrConst.PtrConst BG.CChar
         ) => BG.CompatHasField.HasField "wuffs_base__status_repr" Wuffs_base__status ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__status {wuffs_base__status_repr = y1}
      , BG.getField @"wuffs_base__status_repr" x0
      )

instance ( ty ~ PtrConst.PtrConst BG.CChar
         ) => BG.HasField "wuffs_base__status_repr" (BG.Ptr Wuffs_base__status) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__status_repr")

instance HasCField.HasCField Wuffs_base__status "wuffs_base__status_repr" where

  type CFieldType Wuffs_base__status "wuffs_base__status_repr" =
    PtrConst.PtrConst BG.CChar

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct wuffs_base__result_f64@

    __defined at:__ @wuffs\/wuffs-v0.4.c 743:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__result_f64 = Wuffs_base__result_f64
  { wuffs_base__result_f64_status :: Wuffs_base__status
    {- ^ __C declaration:__ @status@

         __defined at:__ @wuffs\/wuffs-v0.4.c 743:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__result_f64_value :: BG.CDouble
    {- ^ __C declaration:__ @value@

         __defined at:__ @wuffs\/wuffs-v0.4.c 743:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__result_f64 where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__result_f64 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__result_f64
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__result_f64_status") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__result_f64_value") ptr0

instance Marshal.WriteRaw Wuffs_base__result_f64 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__result_f64
            wuffs_base__result_f64_status2
            wuffs_base__result_f64_value3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__result_f64_status") ptr0 wuffs_base__result_f64_status2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__result_f64_value") ptr0 wuffs_base__result_f64_value3

deriving via Marshal.EquivStorable Wuffs_base__result_f64 instance BG.Storable Wuffs_base__result_f64

deriving via Struct.IsStructViaReadRaw Wuffs_base__result_f64 instance Struct.IsStruct Wuffs_base__result_f64

{-| __C declaration:__ @status@

    __defined at:__ @wuffs\/wuffs-v0.4.c 743:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__status
         ) => BG.CompatHasField.HasField "wuffs_base__result_f64_status" Wuffs_base__result_f64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__result_f64 { wuffs_base__result_f64_status = y1
                                 , wuffs_base__result_f64_value = BG.getField @"wuffs_base__result_f64_value" x0
                                 }
      , BG.getField @"wuffs_base__result_f64_status" x0
      )

instance ( ty ~ Wuffs_base__status
         ) => BG.HasField "wuffs_base__result_f64_status" (BG.Ptr Wuffs_base__result_f64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__result_f64_status")

instance HasCField.HasCField Wuffs_base__result_f64 "wuffs_base__result_f64_status" where

  type CFieldType Wuffs_base__result_f64 "wuffs_base__result_f64_status" =
    Wuffs_base__status

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @value@

    __defined at:__ @wuffs\/wuffs-v0.4.c 743:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.CDouble
         ) => BG.CompatHasField.HasField "wuffs_base__result_f64_value" Wuffs_base__result_f64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__result_f64 { wuffs_base__result_f64_value = y1
                                 , wuffs_base__result_f64_status = BG.getField @"wuffs_base__result_f64_status" x0
                                 }
      , BG.getField @"wuffs_base__result_f64_value" x0
      )

instance ( ty ~ BG.CDouble
         ) => BG.HasField "wuffs_base__result_f64_value" (BG.Ptr Wuffs_base__result_f64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__result_f64_value")

instance HasCField.HasCField Wuffs_base__result_f64 "wuffs_base__result_f64_value" where

  type CFieldType Wuffs_base__result_f64 "wuffs_base__result_f64_value" =
    BG.CDouble

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @struct wuffs_base__result_i64@

    __defined at:__ @wuffs\/wuffs-v0.4.c 744:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__result_i64 = Wuffs_base__result_i64
  { wuffs_base__result_i64_status :: Wuffs_base__status
    {- ^ __C declaration:__ @status@

         __defined at:__ @wuffs\/wuffs-v0.4.c 744:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__result_i64_value :: HsBindgen.Runtime.LibC.Int64
    {- ^ __C declaration:__ @value@

         __defined at:__ @wuffs\/wuffs-v0.4.c 744:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__result_i64 where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__result_i64 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__result_i64
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__result_i64_status") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__result_i64_value") ptr0

instance Marshal.WriteRaw Wuffs_base__result_i64 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__result_i64
            wuffs_base__result_i64_status2
            wuffs_base__result_i64_value3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__result_i64_status") ptr0 wuffs_base__result_i64_status2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__result_i64_value") ptr0 wuffs_base__result_i64_value3

deriving via Marshal.EquivStorable Wuffs_base__result_i64 instance BG.Storable Wuffs_base__result_i64

deriving via Struct.IsStructViaReadRaw Wuffs_base__result_i64 instance Struct.IsStruct Wuffs_base__result_i64

{-| __C declaration:__ @status@

    __defined at:__ @wuffs\/wuffs-v0.4.c 744:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__status
         ) => BG.CompatHasField.HasField "wuffs_base__result_i64_status" Wuffs_base__result_i64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__result_i64 { wuffs_base__result_i64_status = y1
                                 , wuffs_base__result_i64_value = BG.getField @"wuffs_base__result_i64_value" x0
                                 }
      , BG.getField @"wuffs_base__result_i64_status" x0
      )

instance ( ty ~ Wuffs_base__status
         ) => BG.HasField "wuffs_base__result_i64_status" (BG.Ptr Wuffs_base__result_i64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__result_i64_status")

instance HasCField.HasCField Wuffs_base__result_i64 "wuffs_base__result_i64_status" where

  type CFieldType Wuffs_base__result_i64 "wuffs_base__result_i64_status" =
    Wuffs_base__status

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @value@

    __defined at:__ @wuffs\/wuffs-v0.4.c 744:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Int64
         ) => BG.CompatHasField.HasField "wuffs_base__result_i64_value" Wuffs_base__result_i64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__result_i64 { wuffs_base__result_i64_value = y1
                                 , wuffs_base__result_i64_status = BG.getField @"wuffs_base__result_i64_status" x0
                                 }
      , BG.getField @"wuffs_base__result_i64_value" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Int64
         ) => BG.HasField "wuffs_base__result_i64_value" (BG.Ptr Wuffs_base__result_i64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__result_i64_value")

instance HasCField.HasCField Wuffs_base__result_i64 "wuffs_base__result_i64_value" where

  type CFieldType Wuffs_base__result_i64 "wuffs_base__result_i64_value" =
    HsBindgen.Runtime.LibC.Int64

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @struct wuffs_base__result_u64@

    __defined at:__ @wuffs\/wuffs-v0.4.c 745:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__result_u64 = Wuffs_base__result_u64
  { wuffs_base__result_u64_status :: Wuffs_base__status
    {- ^ __C declaration:__ @status@

         __defined at:__ @wuffs\/wuffs-v0.4.c 745:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__result_u64_value :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @value@

         __defined at:__ @wuffs\/wuffs-v0.4.c 745:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__result_u64 where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__result_u64 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__result_u64
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__result_u64_status") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__result_u64_value") ptr0

instance Marshal.WriteRaw Wuffs_base__result_u64 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__result_u64
            wuffs_base__result_u64_status2
            wuffs_base__result_u64_value3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__result_u64_status") ptr0 wuffs_base__result_u64_status2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__result_u64_value") ptr0 wuffs_base__result_u64_value3

deriving via Marshal.EquivStorable Wuffs_base__result_u64 instance BG.Storable Wuffs_base__result_u64

deriving via Struct.IsStructViaReadRaw Wuffs_base__result_u64 instance Struct.IsStruct Wuffs_base__result_u64

{-| __C declaration:__ @status@

    __defined at:__ @wuffs\/wuffs-v0.4.c 745:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__status
         ) => BG.CompatHasField.HasField "wuffs_base__result_u64_status" Wuffs_base__result_u64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__result_u64 { wuffs_base__result_u64_status = y1
                                 , wuffs_base__result_u64_value = BG.getField @"wuffs_base__result_u64_value" x0
                                 }
      , BG.getField @"wuffs_base__result_u64_status" x0
      )

instance ( ty ~ Wuffs_base__status
         ) => BG.HasField "wuffs_base__result_u64_status" (BG.Ptr Wuffs_base__result_u64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__result_u64_status")

instance HasCField.HasCField Wuffs_base__result_u64 "wuffs_base__result_u64_status" where

  type CFieldType Wuffs_base__result_u64 "wuffs_base__result_u64_status" =
    Wuffs_base__status

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @value@

    __defined at:__ @wuffs\/wuffs-v0.4.c 745:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__result_u64_value" Wuffs_base__result_u64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__result_u64 { wuffs_base__result_u64_value = y1
                                 , wuffs_base__result_u64_status = BG.getField @"wuffs_base__result_u64_status" x0
                                 }
      , BG.getField @"wuffs_base__result_u64_value" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__result_u64_value" (BG.Ptr Wuffs_base__result_u64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__result_u64_value")

instance HasCField.HasCField Wuffs_base__result_u64 "wuffs_base__result_u64_value" where

  type CFieldType Wuffs_base__result_u64 "wuffs_base__result_u64_value" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @struct wuffs_base__transform__output__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 751:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__transform__output = Wuffs_base__transform__output
  { wuffs_base__transform__output_status :: Wuffs_base__status
    {- ^ __C declaration:__ @status@

         __defined at:__ @wuffs\/wuffs-v0.4.c 752:22@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__transform__output_num_dst :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @num_dst@

         __defined at:__ @wuffs\/wuffs-v0.4.c 753:10@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__transform__output_num_src :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @num_src@

         __defined at:__ @wuffs\/wuffs-v0.4.c 754:10@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__transform__output where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__transform__output where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__transform__output
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__transform__output_status") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__transform__output_num_dst") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__transform__output_num_src") ptr0

instance Marshal.WriteRaw Wuffs_base__transform__output where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__transform__output
            wuffs_base__transform__output_status2
            wuffs_base__transform__output_num_dst3
            wuffs_base__transform__output_num_src4 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__transform__output_status") ptr0 wuffs_base__transform__output_status2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__transform__output_num_dst") ptr0 wuffs_base__transform__output_num_dst3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__transform__output_num_src") ptr0 wuffs_base__transform__output_num_src4

deriving via Marshal.EquivStorable Wuffs_base__transform__output instance BG.Storable Wuffs_base__transform__output

deriving via Struct.IsStructViaReadRaw Wuffs_base__transform__output instance Struct.IsStruct Wuffs_base__transform__output

{-| __C declaration:__ @status@

    __defined at:__ @wuffs\/wuffs-v0.4.c 752:22@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__status
         ) => BG.CompatHasField.HasField "wuffs_base__transform__output_status" Wuffs_base__transform__output ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__transform__output { wuffs_base__transform__output_status = y1
                                        , wuffs_base__transform__output_num_dst = BG.getField @"wuffs_base__transform__output_num_dst" x0
                                        , wuffs_base__transform__output_num_src = BG.getField @"wuffs_base__transform__output_num_src" x0
                                        }
      , BG.getField @"wuffs_base__transform__output_status" x0
      )

instance ( ty ~ Wuffs_base__status
         ) => BG.HasField "wuffs_base__transform__output_status" (BG.Ptr Wuffs_base__transform__output) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__transform__output_status")

instance HasCField.HasCField Wuffs_base__transform__output "wuffs_base__transform__output_status" where

  type CFieldType Wuffs_base__transform__output "wuffs_base__transform__output_status" =
    Wuffs_base__status

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @num_dst@

    __defined at:__ @wuffs\/wuffs-v0.4.c 753:10@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__transform__output_num_dst" Wuffs_base__transform__output ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__transform__output { wuffs_base__transform__output_num_dst = y1
                                        , wuffs_base__transform__output_status = BG.getField @"wuffs_base__transform__output_status" x0
                                        , wuffs_base__transform__output_num_src = BG.getField @"wuffs_base__transform__output_num_src" x0
                                        }
      , BG.getField @"wuffs_base__transform__output_num_dst" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__transform__output_num_dst" (BG.Ptr Wuffs_base__transform__output) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__transform__output_num_dst")

instance HasCField.HasCField Wuffs_base__transform__output "wuffs_base__transform__output_num_dst" where

  type CFieldType Wuffs_base__transform__output "wuffs_base__transform__output_num_dst" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @num_src@

    __defined at:__ @wuffs\/wuffs-v0.4.c 754:10@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__transform__output_num_src" Wuffs_base__transform__output ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__transform__output { wuffs_base__transform__output_num_src = y1
                                        , wuffs_base__transform__output_status = BG.getField @"wuffs_base__transform__output_status" x0
                                        , wuffs_base__transform__output_num_dst = BG.getField @"wuffs_base__transform__output_num_dst" x0
                                        }
      , BG.getField @"wuffs_base__transform__output_num_src" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__transform__output_num_src" (BG.Ptr Wuffs_base__transform__output) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__transform__output_num_src")

instance HasCField.HasCField Wuffs_base__transform__output "wuffs_base__transform__output_num_src" where

  type CFieldType Wuffs_base__transform__output "wuffs_base__transform__output_num_src" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__ABXR@

    __defined at:__ @wuffs\/wuffs-v0.4.c 772:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__ABXR :: BG.CInt
wUFFS_BASE__FOURCC__ABXR = (1094867026 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__ABXS@

    __defined at:__ @wuffs\/wuffs-v0.4.c 775:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__ABXS :: BG.CInt
wUFFS_BASE__FOURCC__ABXS = (1094867027 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__BGCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 778:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__BGCL :: BG.CInt
wUFFS_BASE__FOURCC__BGCL = (1111966540 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__BMP@

    __defined at:__ @wuffs\/wuffs-v0.4.c 781:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__BMP :: BG.CInt
wUFFS_BASE__FOURCC__BMP = (1112363040 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__BRTL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 784:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__BRTL :: BG.CInt
wUFFS_BASE__FOURCC__BRTL = (1112691788 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__BZ2@

    __defined at:__ @wuffs\/wuffs-v0.4.c 787:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__BZ2 :: BG.CInt
wUFFS_BASE__FOURCC__BZ2 = (1113207328 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__CBOR@

    __defined at:__ @wuffs\/wuffs-v0.4.c 790:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__CBOR :: BG.CInt
wUFFS_BASE__FOURCC__CBOR = (1128419154 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__CHRM@

    __defined at:__ @wuffs\/wuffs-v0.4.c 793:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__CHRM :: BG.CInt
wUFFS_BASE__FOURCC__CHRM = (1128813133 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__CSS@

    __defined at:__ @wuffs\/wuffs-v0.4.c 796:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__CSS :: BG.CInt
wUFFS_BASE__FOURCC__CSS = (1129534240 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__EPS@

    __defined at:__ @wuffs\/wuffs-v0.4.c 799:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__EPS :: BG.CInt
wUFFS_BASE__FOURCC__EPS = (1162892064 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__ETC2@

    __defined at:__ @wuffs\/wuffs-v0.4.c 802:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__ETC2 :: BG.CInt
wUFFS_BASE__FOURCC__ETC2 = (1163150130 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__EXIF@

    __defined at:__ @wuffs\/wuffs-v0.4.c 805:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__EXIF :: BG.CInt
wUFFS_BASE__FOURCC__EXIF = (1163413830 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__FLAC@

    __defined at:__ @wuffs\/wuffs-v0.4.c 808:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__FLAC :: BG.CInt
wUFFS_BASE__FOURCC__FLAC = (1179402563 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__GAMA@

    __defined at:__ @wuffs\/wuffs-v0.4.c 811:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__GAMA :: BG.CInt
wUFFS_BASE__FOURCC__GAMA = (1195461953 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__GIF@

    __defined at:__ @wuffs\/wuffs-v0.4.c 814:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__GIF :: BG.CInt
wUFFS_BASE__FOURCC__GIF = (1195984416 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__GZ@

    __defined at:__ @wuffs\/wuffs-v0.4.c 817:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__GZ :: BG.CInt
wUFFS_BASE__FOURCC__GZ = (1197088800 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__HEIF@

    __defined at:__ @wuffs\/wuffs-v0.4.c 820:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__HEIF :: BG.CInt
wUFFS_BASE__FOURCC__HEIF = (1212500294 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__HTML@

    __defined at:__ @wuffs\/wuffs-v0.4.c 823:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__HTML :: BG.CInt
wUFFS_BASE__FOURCC__HTML = (1213484364 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__ICCP@

    __defined at:__ @wuffs\/wuffs-v0.4.c 826:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__ICCP :: BG.CInt
wUFFS_BASE__FOURCC__ICCP = (1229144912 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__ICO@

    __defined at:__ @wuffs\/wuffs-v0.4.c 829:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__ICO :: BG.CInt
wUFFS_BASE__FOURCC__ICO = (1229147936 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__ICVG@

    __defined at:__ @wuffs\/wuffs-v0.4.c 832:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__ICVG :: BG.CInt
wUFFS_BASE__FOURCC__ICVG = (1229149767 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__INI@

    __defined at:__ @wuffs\/wuffs-v0.4.c 835:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__INI :: BG.CInt
wUFFS_BASE__FOURCC__INI = (1229867296 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__JPEG@

    __defined at:__ @wuffs\/wuffs-v0.4.c 838:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__JPEG :: BG.CInt
wUFFS_BASE__FOURCC__JPEG = (1246774599 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__JS@

    __defined at:__ @wuffs\/wuffs-v0.4.c 841:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__JS :: BG.CInt
wUFFS_BASE__FOURCC__JS = (1246961696 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__JSON@

    __defined at:__ @wuffs\/wuffs-v0.4.c 844:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__JSON :: BG.CInt
wUFFS_BASE__FOURCC__JSON = (1246973774 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__JWCC@

    __defined at:__ @wuffs\/wuffs-v0.4.c 847:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__JWCC :: BG.CInt
wUFFS_BASE__FOURCC__JWCC = (1247232835 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__KVP@

    __defined at:__ @wuffs\/wuffs-v0.4.c 850:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__KVP :: BG.CInt
wUFFS_BASE__FOURCC__KVP = (1263947808 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__KVPK@

    __defined at:__ @wuffs\/wuffs-v0.4.c 853:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__KVPK :: BG.CInt
wUFFS_BASE__FOURCC__KVPK = (1263947851 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__KVPV@

    __defined at:__ @wuffs\/wuffs-v0.4.c 856:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__KVPV :: BG.CInt
wUFFS_BASE__FOURCC__KVPV = (1263947862 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__LZ4@

    __defined at:__ @wuffs\/wuffs-v0.4.c 859:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__LZ4 :: BG.CInt
wUFFS_BASE__FOURCC__LZ4 = (1280980000 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__LZIP@

    __defined at:__ @wuffs\/wuffs-v0.4.c 862:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__LZIP :: BG.CInt
wUFFS_BASE__FOURCC__LZIP = (1280985424 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__LZMA@

    __defined at:__ @wuffs\/wuffs-v0.4.c 865:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__LZMA :: BG.CInt
wUFFS_BASE__FOURCC__LZMA = (1280986433 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__MD@

    __defined at:__ @wuffs\/wuffs-v0.4.c 868:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__MD :: BG.CInt
wUFFS_BASE__FOURCC__MD = (1296310304 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__MTIM@

    __defined at:__ @wuffs\/wuffs-v0.4.c 871:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__MTIM :: BG.CInt
wUFFS_BASE__FOURCC__MTIM = (1297369421 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__MP3@

    __defined at:__ @wuffs\/wuffs-v0.4.c 874:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__MP3 :: BG.CInt
wUFFS_BASE__FOURCC__MP3 = (1297101600 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__NIE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 877:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__NIE :: BG.CInt
wUFFS_BASE__FOURCC__NIE = (1313424672 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__NPBM@

    __defined at:__ @wuffs\/wuffs-v0.4.c 880:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__NPBM :: BG.CInt
wUFFS_BASE__FOURCC__NPBM = (1313882701 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__OFS2@

    __defined at:__ @wuffs\/wuffs-v0.4.c 883:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__OFS2 :: BG.CInt
wUFFS_BASE__FOURCC__OFS2 = (1330008882 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__OTF@

    __defined at:__ @wuffs\/wuffs-v0.4.c 886:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__OTF :: BG.CInt
wUFFS_BASE__FOURCC__OTF = (1330923040 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__PDF@

    __defined at:__ @wuffs\/wuffs-v0.4.c 889:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__PDF :: BG.CInt
wUFFS_BASE__FOURCC__PDF = (1346651680 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__PHYD@

    __defined at:__ @wuffs\/wuffs-v0.4.c 892:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__PHYD :: BG.CInt
wUFFS_BASE__FOURCC__PHYD = (1346918724 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__PNG@

    __defined at:__ @wuffs\/wuffs-v0.4.c 895:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__PNG :: BG.CInt
wUFFS_BASE__FOURCC__PNG = (1347307296 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__PS@

    __defined at:__ @wuffs\/wuffs-v0.4.c 898:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__PS :: BG.CInt
wUFFS_BASE__FOURCC__PS = (1347624992 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__QOI@

    __defined at:__ @wuffs\/wuffs-v0.4.c 901:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__QOI :: BG.CInt
wUFFS_BASE__FOURCC__QOI = (1364150560 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__RAC@

    __defined at:__ @wuffs\/wuffs-v0.4.c 904:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__RAC :: BG.CInt
wUFFS_BASE__FOURCC__RAC = (1380008736 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__RAW@

    __defined at:__ @wuffs\/wuffs-v0.4.c 907:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__RAW :: BG.CInt
wUFFS_BASE__FOURCC__RAW = (1380013856 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__RIFF@

    __defined at:__ @wuffs\/wuffs-v0.4.c 910:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__RIFF :: BG.CInt
wUFFS_BASE__FOURCC__RIFF = (1380533830 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__RIGL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 913:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__RIGL :: BG.CInt
wUFFS_BASE__FOURCC__RIGL = (1380534092 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__SNPY@

    __defined at:__ @wuffs\/wuffs-v0.4.c 916:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__SNPY :: BG.CInt
wUFFS_BASE__FOURCC__SNPY = (1397641305 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__SRGB@

    __defined at:__ @wuffs\/wuffs-v0.4.c 919:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__SRGB :: BG.CInt
wUFFS_BASE__FOURCC__SRGB = (1397901122 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__SVG@

    __defined at:__ @wuffs\/wuffs-v0.4.c 922:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__SVG :: BG.CInt
wUFFS_BASE__FOURCC__SVG = (1398163232 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__TAR@

    __defined at:__ @wuffs\/wuffs-v0.4.c 925:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__TAR :: BG.CInt
wUFFS_BASE__FOURCC__TAR = (1413567008 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__TEXT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 928:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__TEXT :: BG.CInt
wUFFS_BASE__FOURCC__TEXT = (1413830740 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__TGA@

    __defined at:__ @wuffs\/wuffs-v0.4.c 931:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__TGA :: BG.CInt
wUFFS_BASE__FOURCC__TGA = (1413955872 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__TH@

    __defined at:__ @wuffs\/wuffs-v0.4.c 934:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__TH :: BG.CInt
wUFFS_BASE__FOURCC__TH = (1414012960 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__TIFF@

    __defined at:__ @wuffs\/wuffs-v0.4.c 937:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__TIFF :: BG.CInt
wUFFS_BASE__FOURCC__TIFF = (1414088262 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__TOML@

    __defined at:__ @wuffs\/wuffs-v0.4.c 940:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__TOML :: BG.CInt
wUFFS_BASE__FOURCC__TOML = (1414483276 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__WAVE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 943:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__WAVE :: BG.CInt
wUFFS_BASE__FOURCC__WAVE = (1463899717 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__WBMP@

    __defined at:__ @wuffs\/wuffs-v0.4.c 946:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__WBMP :: BG.CInt
wUFFS_BASE__FOURCC__WBMP = (1463962960 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__WEBP@

    __defined at:__ @wuffs\/wuffs-v0.4.c 949:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__WEBP :: BG.CInt
wUFFS_BASE__FOURCC__WEBP = (1464156752 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__WOFF@

    __defined at:__ @wuffs\/wuffs-v0.4.c 952:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__WOFF :: BG.CInt
wUFFS_BASE__FOURCC__WOFF = (1464813126 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__XML@

    __defined at:__ @wuffs\/wuffs-v0.4.c 955:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__XML :: BG.CInt
wUFFS_BASE__FOURCC__XML = (1481460768 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__XMP@

    __defined at:__ @wuffs\/wuffs-v0.4.c 958:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__XMP :: BG.CInt
wUFFS_BASE__FOURCC__XMP = (1481461792 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__XZ@

    __defined at:__ @wuffs\/wuffs-v0.4.c 961:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__XZ :: BG.CInt
wUFFS_BASE__FOURCC__XZ = (1482301472 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__ZIP@

    __defined at:__ @wuffs\/wuffs-v0.4.c 964:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__ZIP :: BG.CInt
wUFFS_BASE__FOURCC__ZIP = (1514754080 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__ZLIB@

    __defined at:__ @wuffs\/wuffs-v0.4.c 967:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__ZLIB :: BG.CInt
wUFFS_BASE__FOURCC__ZLIB = (1514948930 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__FOURCC__ZSTD@

    __defined at:__ @wuffs\/wuffs-v0.4.c 970:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__FOURCC__ZSTD :: BG.CInt
wUFFS_BASE__FOURCC__ZSTD = (1515410500 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__QUIRK_IGNORE_CHECKSUM@

    __defined at:__ @wuffs\/wuffs-v0.4.c 976:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__QUIRK_IGNORE_CHECKSUM :: BG.CInt
wUFFS_BASE__QUIRK_IGNORE_CHECKSUM = (1 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__QUIRK_QUALITY@

    __defined at:__ @wuffs\/wuffs-v0.4.c 978:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__QUIRK_QUALITY :: BG.CInt
wUFFS_BASE__QUIRK_QUALITY = (2 :: BG.CInt)

{-| __C declaration:__ @wuffs_base__flicks@

    __defined at:__ @wuffs\/wuffs-v0.4.c 984:17@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
newtype Wuffs_base__flicks = Wuffs_base__flicks
  { unwrapWuffs_base__flicks :: HsBindgen.Runtime.LibC.Int64
  }
  deriving stock (Eq, BG.Generic, Ord, Read, Show)
  deriving newtype
    ( BG.Bitfield
    , BG.Bits
    , Bounded
    , Enum
    , BG.FiniteBits
    , BG.HasFFIType
    , Integral
    , BG.Ix
    , Num
    , BG.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , BG.Storable
    , Marshal.WriteRaw
    )

instance ( ty ~ HsBindgen.Runtime.LibC.Int64
         ) => BG.CompatHasField.HasField "unwrapWuffs_base__flicks" Wuffs_base__flicks ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__flicks {unwrapWuffs_base__flicks = y1}
      , BG.getField @"unwrapWuffs_base__flicks" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Int64
         ) => BG.HasField "unwrapWuffs_base__flicks" (BG.Ptr Wuffs_base__flicks) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"unwrapWuffs_base__flicks")

instance HasCField.HasCField Wuffs_base__flicks "unwrapWuffs_base__flicks" where

  type CFieldType Wuffs_base__flicks "unwrapWuffs_base__flicks" =
    HsBindgen.Runtime.LibC.Int64

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct wuffs_base__multiply_u64__output__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1197:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__multiply_u64__output = Wuffs_base__multiply_u64__output
  { wuffs_base__multiply_u64__output_lo :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @lo@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1198:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__multiply_u64__output_hi :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @hi@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1199:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__multiply_u64__output where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__multiply_u64__output where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__multiply_u64__output
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__multiply_u64__output_lo") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__multiply_u64__output_hi") ptr0

instance Marshal.WriteRaw Wuffs_base__multiply_u64__output where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__multiply_u64__output
            wuffs_base__multiply_u64__output_lo2
            wuffs_base__multiply_u64__output_hi3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__multiply_u64__output_lo") ptr0 wuffs_base__multiply_u64__output_lo2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__multiply_u64__output_hi") ptr0 wuffs_base__multiply_u64__output_hi3

deriving via Marshal.EquivStorable Wuffs_base__multiply_u64__output instance BG.Storable Wuffs_base__multiply_u64__output

deriving via Struct.IsStructViaReadRaw Wuffs_base__multiply_u64__output instance Struct.IsStruct Wuffs_base__multiply_u64__output

{-| __C declaration:__ @lo@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1198:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__multiply_u64__output_lo" Wuffs_base__multiply_u64__output ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__multiply_u64__output { wuffs_base__multiply_u64__output_lo = y1
                                           , wuffs_base__multiply_u64__output_hi = BG.getField @"wuffs_base__multiply_u64__output_hi" x0
                                           }
      , BG.getField @"wuffs_base__multiply_u64__output_lo" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__multiply_u64__output_lo" (BG.Ptr Wuffs_base__multiply_u64__output) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__multiply_u64__output_lo")

instance HasCField.HasCField Wuffs_base__multiply_u64__output "wuffs_base__multiply_u64__output_lo" where

  type CFieldType Wuffs_base__multiply_u64__output "wuffs_base__multiply_u64__output_lo" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @hi@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1199:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__multiply_u64__output_hi" Wuffs_base__multiply_u64__output ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__multiply_u64__output { wuffs_base__multiply_u64__output_hi = y1
                                           , wuffs_base__multiply_u64__output_lo = BG.getField @"wuffs_base__multiply_u64__output_lo" x0
                                           }
      , BG.getField @"wuffs_base__multiply_u64__output_hi" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__multiply_u64__output_hi" (BG.Ptr Wuffs_base__multiply_u64__output) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__multiply_u64__output_hi")

instance HasCField.HasCField Wuffs_base__multiply_u64__output "wuffs_base__multiply_u64__output_hi" where

  type CFieldType Wuffs_base__multiply_u64__output "wuffs_base__multiply_u64__output_hi" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @struct wuffs_base__bitvec256__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1233:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__bitvec256 = Wuffs_base__bitvec256
  { wuffs_base__bitvec256_elements_u64 :: CA.ConstantArray 4 HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @elements_u64@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1236:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__bitvec256 where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__bitvec256 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__bitvec256
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__bitvec256_elements_u64") ptr0

instance Marshal.WriteRaw Wuffs_base__bitvec256 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__bitvec256 wuffs_base__bitvec256_elements_u642 ->
            HasCField.writeRaw (BG.Proxy @"wuffs_base__bitvec256_elements_u64") ptr0 wuffs_base__bitvec256_elements_u642

deriving via Marshal.EquivStorable Wuffs_base__bitvec256 instance BG.Storable Wuffs_base__bitvec256

deriving via Struct.IsStructViaReadRaw Wuffs_base__bitvec256 instance Struct.IsStruct Wuffs_base__bitvec256

{-| __C declaration:__ @elements_u64@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1236:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ CA.ConstantArray 4 HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__bitvec256_elements_u64" Wuffs_base__bitvec256 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__bitvec256 {wuffs_base__bitvec256_elements_u64 = y1}
      , BG.getField @"wuffs_base__bitvec256_elements_u64" x0
      )

instance ( ty ~ CA.ConstantArray 4 HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__bitvec256_elements_u64" (BG.Ptr Wuffs_base__bitvec256) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__bitvec256_elements_u64")

instance HasCField.HasCField Wuffs_base__bitvec256 "wuffs_base__bitvec256_elements_u64" where

  type CFieldType Wuffs_base__bitvec256 "wuffs_base__bitvec256_elements_u64" =
    CA.ConstantArray 4 HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct wuffs_base__optional_u63__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1263:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__optional_u63 = Wuffs_base__optional_u63
  { wuffs_base__optional_u63_repr :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @repr@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1264:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__optional_u63 where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__optional_u63 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__optional_u63
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__optional_u63_repr") ptr0

instance Marshal.WriteRaw Wuffs_base__optional_u63 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__optional_u63 wuffs_base__optional_u63_repr2 ->
            HasCField.writeRaw (BG.Proxy @"wuffs_base__optional_u63_repr") ptr0 wuffs_base__optional_u63_repr2

deriving via Marshal.EquivStorable Wuffs_base__optional_u63 instance BG.Storable Wuffs_base__optional_u63

deriving via Struct.IsStructViaReadRaw Wuffs_base__optional_u63 instance Struct.IsStruct Wuffs_base__optional_u63

{-| __C declaration:__ @repr@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1264:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__optional_u63_repr" Wuffs_base__optional_u63 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__optional_u63 {wuffs_base__optional_u63_repr = y1}
      , BG.getField @"wuffs_base__optional_u63_repr" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__optional_u63_repr" (BG.Ptr Wuffs_base__optional_u63) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__optional_u63_repr")

instance HasCField.HasCField Wuffs_base__optional_u63 "wuffs_base__optional_u63_repr" where

  type CFieldType Wuffs_base__optional_u63 "wuffs_base__optional_u63_repr" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct wuffs_base__slice_u8@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1715:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__slice_u8 = Wuffs_base__slice_u8
  { wuffs_base__slice_u8_ptr :: BG.Ptr HsBindgen.Runtime.LibC.Word8
    {- ^ __C declaration:__ @ptr@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1715:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__slice_u8_len :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @len@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1715:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__slice_u8 where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__slice_u8 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__slice_u8
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__slice_u8_ptr") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__slice_u8_len") ptr0

instance Marshal.WriteRaw Wuffs_base__slice_u8 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__slice_u8 wuffs_base__slice_u8_ptr2 wuffs_base__slice_u8_len3 ->
               HasCField.writeRaw (BG.Proxy @"wuffs_base__slice_u8_ptr") ptr0 wuffs_base__slice_u8_ptr2
            >> HasCField.writeRaw (BG.Proxy @"wuffs_base__slice_u8_len") ptr0 wuffs_base__slice_u8_len3

deriving via Marshal.EquivStorable Wuffs_base__slice_u8 instance BG.Storable Wuffs_base__slice_u8

deriving via Struct.IsStructViaReadRaw Wuffs_base__slice_u8 instance Struct.IsStruct Wuffs_base__slice_u8

{-| __C declaration:__ @ptr@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1715:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word8
         ) => BG.CompatHasField.HasField "wuffs_base__slice_u8_ptr" Wuffs_base__slice_u8 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__slice_u8 { wuffs_base__slice_u8_ptr = y1
                               , wuffs_base__slice_u8_len = BG.getField @"wuffs_base__slice_u8_len" x0
                               }
      , BG.getField @"wuffs_base__slice_u8_ptr" x0
      )

instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word8
         ) => BG.HasField "wuffs_base__slice_u8_ptr" (BG.Ptr Wuffs_base__slice_u8) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__slice_u8_ptr")

instance HasCField.HasCField Wuffs_base__slice_u8 "wuffs_base__slice_u8_ptr" where

  type CFieldType Wuffs_base__slice_u8 "wuffs_base__slice_u8_ptr" =
    BG.Ptr HsBindgen.Runtime.LibC.Word8

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @len@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1715:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__slice_u8_len" Wuffs_base__slice_u8 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__slice_u8 { wuffs_base__slice_u8_len = y1
                               , wuffs_base__slice_u8_ptr = BG.getField @"wuffs_base__slice_u8_ptr" x0
                               }
      , BG.getField @"wuffs_base__slice_u8_len" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__slice_u8_len" (BG.Ptr Wuffs_base__slice_u8) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__slice_u8_len")

instance HasCField.HasCField Wuffs_base__slice_u8 "wuffs_base__slice_u8_len" where

  type CFieldType Wuffs_base__slice_u8 "wuffs_base__slice_u8_len" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @struct wuffs_base__slice_u16@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1716:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__slice_u16 = Wuffs_base__slice_u16
  { wuffs_base__slice_u16_ptr :: BG.Ptr HsBindgen.Runtime.LibC.Word16
    {- ^ __C declaration:__ @ptr@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1716:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__slice_u16_len :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @len@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1716:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__slice_u16 where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__slice_u16 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__slice_u16
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__slice_u16_ptr") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__slice_u16_len") ptr0

instance Marshal.WriteRaw Wuffs_base__slice_u16 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__slice_u16 wuffs_base__slice_u16_ptr2 wuffs_base__slice_u16_len3 ->
               HasCField.writeRaw (BG.Proxy @"wuffs_base__slice_u16_ptr") ptr0 wuffs_base__slice_u16_ptr2
            >> HasCField.writeRaw (BG.Proxy @"wuffs_base__slice_u16_len") ptr0 wuffs_base__slice_u16_len3

deriving via Marshal.EquivStorable Wuffs_base__slice_u16 instance BG.Storable Wuffs_base__slice_u16

deriving via Struct.IsStructViaReadRaw Wuffs_base__slice_u16 instance Struct.IsStruct Wuffs_base__slice_u16

{-| __C declaration:__ @ptr@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1716:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word16
         ) => BG.CompatHasField.HasField "wuffs_base__slice_u16_ptr" Wuffs_base__slice_u16 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__slice_u16 { wuffs_base__slice_u16_ptr = y1
                                , wuffs_base__slice_u16_len = BG.getField @"wuffs_base__slice_u16_len" x0
                                }
      , BG.getField @"wuffs_base__slice_u16_ptr" x0
      )

instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word16
         ) => BG.HasField "wuffs_base__slice_u16_ptr" (BG.Ptr Wuffs_base__slice_u16) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__slice_u16_ptr")

instance HasCField.HasCField Wuffs_base__slice_u16 "wuffs_base__slice_u16_ptr" where

  type CFieldType Wuffs_base__slice_u16 "wuffs_base__slice_u16_ptr" =
    BG.Ptr HsBindgen.Runtime.LibC.Word16

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @len@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1716:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__slice_u16_len" Wuffs_base__slice_u16 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__slice_u16 { wuffs_base__slice_u16_len = y1
                                , wuffs_base__slice_u16_ptr = BG.getField @"wuffs_base__slice_u16_ptr" x0
                                }
      , BG.getField @"wuffs_base__slice_u16_len" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__slice_u16_len" (BG.Ptr Wuffs_base__slice_u16) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__slice_u16_len")

instance HasCField.HasCField Wuffs_base__slice_u16 "wuffs_base__slice_u16_len" where

  type CFieldType Wuffs_base__slice_u16 "wuffs_base__slice_u16_len" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @struct wuffs_base__slice_u32@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1717:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__slice_u32 = Wuffs_base__slice_u32
  { wuffs_base__slice_u32_ptr :: BG.Ptr HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @ptr@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1717:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__slice_u32_len :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @len@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1717:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__slice_u32 where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__slice_u32 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__slice_u32
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__slice_u32_ptr") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__slice_u32_len") ptr0

instance Marshal.WriteRaw Wuffs_base__slice_u32 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__slice_u32 wuffs_base__slice_u32_ptr2 wuffs_base__slice_u32_len3 ->
               HasCField.writeRaw (BG.Proxy @"wuffs_base__slice_u32_ptr") ptr0 wuffs_base__slice_u32_ptr2
            >> HasCField.writeRaw (BG.Proxy @"wuffs_base__slice_u32_len") ptr0 wuffs_base__slice_u32_len3

deriving via Marshal.EquivStorable Wuffs_base__slice_u32 instance BG.Storable Wuffs_base__slice_u32

deriving via Struct.IsStructViaReadRaw Wuffs_base__slice_u32 instance Struct.IsStruct Wuffs_base__slice_u32

{-| __C declaration:__ @ptr@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1717:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__slice_u32_ptr" Wuffs_base__slice_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__slice_u32 { wuffs_base__slice_u32_ptr = y1
                                , wuffs_base__slice_u32_len = BG.getField @"wuffs_base__slice_u32_len" x0
                                }
      , BG.getField @"wuffs_base__slice_u32_ptr" x0
      )

instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__slice_u32_ptr" (BG.Ptr Wuffs_base__slice_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__slice_u32_ptr")

instance HasCField.HasCField Wuffs_base__slice_u32 "wuffs_base__slice_u32_ptr" where

  type CFieldType Wuffs_base__slice_u32 "wuffs_base__slice_u32_ptr" =
    BG.Ptr HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @len@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1717:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__slice_u32_len" Wuffs_base__slice_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__slice_u32 { wuffs_base__slice_u32_len = y1
                                , wuffs_base__slice_u32_ptr = BG.getField @"wuffs_base__slice_u32_ptr" x0
                                }
      , BG.getField @"wuffs_base__slice_u32_len" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__slice_u32_len" (BG.Ptr Wuffs_base__slice_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__slice_u32_len")

instance HasCField.HasCField Wuffs_base__slice_u32 "wuffs_base__slice_u32_len" where

  type CFieldType Wuffs_base__slice_u32 "wuffs_base__slice_u32_len" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @struct wuffs_base__slice_u64@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1718:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__slice_u64 = Wuffs_base__slice_u64
  { wuffs_base__slice_u64_ptr :: BG.Ptr HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @ptr@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1718:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__slice_u64_len :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @len@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1718:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__slice_u64 where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__slice_u64 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__slice_u64
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__slice_u64_ptr") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__slice_u64_len") ptr0

instance Marshal.WriteRaw Wuffs_base__slice_u64 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__slice_u64 wuffs_base__slice_u64_ptr2 wuffs_base__slice_u64_len3 ->
               HasCField.writeRaw (BG.Proxy @"wuffs_base__slice_u64_ptr") ptr0 wuffs_base__slice_u64_ptr2
            >> HasCField.writeRaw (BG.Proxy @"wuffs_base__slice_u64_len") ptr0 wuffs_base__slice_u64_len3

deriving via Marshal.EquivStorable Wuffs_base__slice_u64 instance BG.Storable Wuffs_base__slice_u64

deriving via Struct.IsStructViaReadRaw Wuffs_base__slice_u64 instance Struct.IsStruct Wuffs_base__slice_u64

{-| __C declaration:__ @ptr@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1718:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__slice_u64_ptr" Wuffs_base__slice_u64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__slice_u64 { wuffs_base__slice_u64_ptr = y1
                                , wuffs_base__slice_u64_len = BG.getField @"wuffs_base__slice_u64_len" x0
                                }
      , BG.getField @"wuffs_base__slice_u64_ptr" x0
      )

instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__slice_u64_ptr" (BG.Ptr Wuffs_base__slice_u64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__slice_u64_ptr")

instance HasCField.HasCField Wuffs_base__slice_u64 "wuffs_base__slice_u64_ptr" where

  type CFieldType Wuffs_base__slice_u64 "wuffs_base__slice_u64_ptr" =
    BG.Ptr HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @len@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1718:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__slice_u64_len" Wuffs_base__slice_u64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__slice_u64 { wuffs_base__slice_u64_len = y1
                                , wuffs_base__slice_u64_ptr = BG.getField @"wuffs_base__slice_u64_ptr" x0
                                }
      , BG.getField @"wuffs_base__slice_u64_len" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__slice_u64_len" (BG.Ptr Wuffs_base__slice_u64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__slice_u64_len")

instance HasCField.HasCField Wuffs_base__slice_u64 "wuffs_base__slice_u64_len" where

  type CFieldType Wuffs_base__slice_u64 "wuffs_base__slice_u64_len" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @struct wuffs_base__table_u8@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1720:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__table_u8 = Wuffs_base__table_u8
  { wuffs_base__table_u8_ptr :: BG.Ptr HsBindgen.Runtime.LibC.Word8
    {- ^ __C declaration:__ @ptr@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1720:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__table_u8_width :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @width@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1720:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__table_u8_height :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @height@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1720:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__table_u8_stride :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @stride@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1720:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__table_u8 where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__table_u8 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__table_u8
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u8_ptr") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u8_width") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u8_height") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u8_stride") ptr0

instance Marshal.WriteRaw Wuffs_base__table_u8 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__table_u8
            wuffs_base__table_u8_ptr2
            wuffs_base__table_u8_width3
            wuffs_base__table_u8_height4
            wuffs_base__table_u8_stride5 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u8_ptr") ptr0 wuffs_base__table_u8_ptr2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u8_width") ptr0 wuffs_base__table_u8_width3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u8_height") ptr0 wuffs_base__table_u8_height4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u8_stride") ptr0 wuffs_base__table_u8_stride5

deriving via Marshal.EquivStorable Wuffs_base__table_u8 instance BG.Storable Wuffs_base__table_u8

deriving via Struct.IsStructViaReadRaw Wuffs_base__table_u8 instance Struct.IsStruct Wuffs_base__table_u8

{-| __C declaration:__ @ptr@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1720:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word8
         ) => BG.CompatHasField.HasField "wuffs_base__table_u8_ptr" Wuffs_base__table_u8 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u8 { wuffs_base__table_u8_ptr = y1
                               , wuffs_base__table_u8_width = BG.getField @"wuffs_base__table_u8_width" x0
                               , wuffs_base__table_u8_height = BG.getField @"wuffs_base__table_u8_height" x0
                               , wuffs_base__table_u8_stride = BG.getField @"wuffs_base__table_u8_stride" x0
                               }
      , BG.getField @"wuffs_base__table_u8_ptr" x0
      )

instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word8
         ) => BG.HasField "wuffs_base__table_u8_ptr" (BG.Ptr Wuffs_base__table_u8) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u8_ptr")

instance HasCField.HasCField Wuffs_base__table_u8 "wuffs_base__table_u8_ptr" where

  type CFieldType Wuffs_base__table_u8 "wuffs_base__table_u8_ptr" =
    BG.Ptr HsBindgen.Runtime.LibC.Word8

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @width@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1720:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__table_u8_width" Wuffs_base__table_u8 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u8 { wuffs_base__table_u8_width = y1
                               , wuffs_base__table_u8_ptr = BG.getField @"wuffs_base__table_u8_ptr" x0
                               , wuffs_base__table_u8_height = BG.getField @"wuffs_base__table_u8_height" x0
                               , wuffs_base__table_u8_stride = BG.getField @"wuffs_base__table_u8_stride" x0
                               }
      , BG.getField @"wuffs_base__table_u8_width" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__table_u8_width" (BG.Ptr Wuffs_base__table_u8) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u8_width")

instance HasCField.HasCField Wuffs_base__table_u8 "wuffs_base__table_u8_width" where

  type CFieldType Wuffs_base__table_u8 "wuffs_base__table_u8_width" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @height@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1720:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__table_u8_height" Wuffs_base__table_u8 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u8 { wuffs_base__table_u8_height = y1
                               , wuffs_base__table_u8_ptr = BG.getField @"wuffs_base__table_u8_ptr" x0
                               , wuffs_base__table_u8_width = BG.getField @"wuffs_base__table_u8_width" x0
                               , wuffs_base__table_u8_stride = BG.getField @"wuffs_base__table_u8_stride" x0
                               }
      , BG.getField @"wuffs_base__table_u8_height" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__table_u8_height" (BG.Ptr Wuffs_base__table_u8) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u8_height")

instance HasCField.HasCField Wuffs_base__table_u8 "wuffs_base__table_u8_height" where

  type CFieldType Wuffs_base__table_u8 "wuffs_base__table_u8_height" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @stride@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1720:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__table_u8_stride" Wuffs_base__table_u8 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u8 { wuffs_base__table_u8_stride = y1
                               , wuffs_base__table_u8_ptr = BG.getField @"wuffs_base__table_u8_ptr" x0
                               , wuffs_base__table_u8_width = BG.getField @"wuffs_base__table_u8_width" x0
                               , wuffs_base__table_u8_height = BG.getField @"wuffs_base__table_u8_height" x0
                               }
      , BG.getField @"wuffs_base__table_u8_stride" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__table_u8_stride" (BG.Ptr Wuffs_base__table_u8) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u8_stride")

instance HasCField.HasCField Wuffs_base__table_u8 "wuffs_base__table_u8_stride" where

  type CFieldType Wuffs_base__table_u8 "wuffs_base__table_u8_stride" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 24

{-| __C declaration:__ @struct wuffs_base__table_u16@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1721:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__table_u16 = Wuffs_base__table_u16
  { wuffs_base__table_u16_ptr :: BG.Ptr HsBindgen.Runtime.LibC.Word16
    {- ^ __C declaration:__ @ptr@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1721:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__table_u16_width :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @width@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1721:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__table_u16_height :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @height@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1721:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__table_u16_stride :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @stride@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1721:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__table_u16 where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__table_u16 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__table_u16
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u16_ptr") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u16_width") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u16_height") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u16_stride") ptr0

instance Marshal.WriteRaw Wuffs_base__table_u16 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__table_u16
            wuffs_base__table_u16_ptr2
            wuffs_base__table_u16_width3
            wuffs_base__table_u16_height4
            wuffs_base__table_u16_stride5 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u16_ptr") ptr0 wuffs_base__table_u16_ptr2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u16_width") ptr0 wuffs_base__table_u16_width3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u16_height") ptr0 wuffs_base__table_u16_height4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u16_stride") ptr0 wuffs_base__table_u16_stride5

deriving via Marshal.EquivStorable Wuffs_base__table_u16 instance BG.Storable Wuffs_base__table_u16

deriving via Struct.IsStructViaReadRaw Wuffs_base__table_u16 instance Struct.IsStruct Wuffs_base__table_u16

{-| __C declaration:__ @ptr@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1721:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word16
         ) => BG.CompatHasField.HasField "wuffs_base__table_u16_ptr" Wuffs_base__table_u16 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u16 { wuffs_base__table_u16_ptr = y1
                                , wuffs_base__table_u16_width = BG.getField @"wuffs_base__table_u16_width" x0
                                , wuffs_base__table_u16_height = BG.getField @"wuffs_base__table_u16_height" x0
                                , wuffs_base__table_u16_stride = BG.getField @"wuffs_base__table_u16_stride" x0
                                }
      , BG.getField @"wuffs_base__table_u16_ptr" x0
      )

instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word16
         ) => BG.HasField "wuffs_base__table_u16_ptr" (BG.Ptr Wuffs_base__table_u16) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u16_ptr")

instance HasCField.HasCField Wuffs_base__table_u16 "wuffs_base__table_u16_ptr" where

  type CFieldType Wuffs_base__table_u16 "wuffs_base__table_u16_ptr" =
    BG.Ptr HsBindgen.Runtime.LibC.Word16

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @width@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1721:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__table_u16_width" Wuffs_base__table_u16 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u16 { wuffs_base__table_u16_width = y1
                                , wuffs_base__table_u16_ptr = BG.getField @"wuffs_base__table_u16_ptr" x0
                                , wuffs_base__table_u16_height = BG.getField @"wuffs_base__table_u16_height" x0
                                , wuffs_base__table_u16_stride = BG.getField @"wuffs_base__table_u16_stride" x0
                                }
      , BG.getField @"wuffs_base__table_u16_width" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__table_u16_width" (BG.Ptr Wuffs_base__table_u16) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u16_width")

instance HasCField.HasCField Wuffs_base__table_u16 "wuffs_base__table_u16_width" where

  type CFieldType Wuffs_base__table_u16 "wuffs_base__table_u16_width" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @height@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1721:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__table_u16_height" Wuffs_base__table_u16 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u16 { wuffs_base__table_u16_height = y1
                                , wuffs_base__table_u16_ptr = BG.getField @"wuffs_base__table_u16_ptr" x0
                                , wuffs_base__table_u16_width = BG.getField @"wuffs_base__table_u16_width" x0
                                , wuffs_base__table_u16_stride = BG.getField @"wuffs_base__table_u16_stride" x0
                                }
      , BG.getField @"wuffs_base__table_u16_height" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__table_u16_height" (BG.Ptr Wuffs_base__table_u16) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u16_height")

instance HasCField.HasCField Wuffs_base__table_u16 "wuffs_base__table_u16_height" where

  type CFieldType Wuffs_base__table_u16 "wuffs_base__table_u16_height" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @stride@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1721:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__table_u16_stride" Wuffs_base__table_u16 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u16 { wuffs_base__table_u16_stride = y1
                                , wuffs_base__table_u16_ptr = BG.getField @"wuffs_base__table_u16_ptr" x0
                                , wuffs_base__table_u16_width = BG.getField @"wuffs_base__table_u16_width" x0
                                , wuffs_base__table_u16_height = BG.getField @"wuffs_base__table_u16_height" x0
                                }
      , BG.getField @"wuffs_base__table_u16_stride" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__table_u16_stride" (BG.Ptr Wuffs_base__table_u16) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u16_stride")

instance HasCField.HasCField Wuffs_base__table_u16 "wuffs_base__table_u16_stride" where

  type CFieldType Wuffs_base__table_u16 "wuffs_base__table_u16_stride" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 24

{-| __C declaration:__ @struct wuffs_base__table_u32@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1722:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__table_u32 = Wuffs_base__table_u32
  { wuffs_base__table_u32_ptr :: BG.Ptr HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @ptr@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1722:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__table_u32_width :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @width@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1722:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__table_u32_height :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @height@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1722:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__table_u32_stride :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @stride@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1722:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__table_u32 where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__table_u32 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__table_u32
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u32_ptr") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u32_width") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u32_height") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u32_stride") ptr0

instance Marshal.WriteRaw Wuffs_base__table_u32 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__table_u32
            wuffs_base__table_u32_ptr2
            wuffs_base__table_u32_width3
            wuffs_base__table_u32_height4
            wuffs_base__table_u32_stride5 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u32_ptr") ptr0 wuffs_base__table_u32_ptr2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u32_width") ptr0 wuffs_base__table_u32_width3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u32_height") ptr0 wuffs_base__table_u32_height4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u32_stride") ptr0 wuffs_base__table_u32_stride5

deriving via Marshal.EquivStorable Wuffs_base__table_u32 instance BG.Storable Wuffs_base__table_u32

deriving via Struct.IsStructViaReadRaw Wuffs_base__table_u32 instance Struct.IsStruct Wuffs_base__table_u32

{-| __C declaration:__ @ptr@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1722:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__table_u32_ptr" Wuffs_base__table_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u32 { wuffs_base__table_u32_ptr = y1
                                , wuffs_base__table_u32_width = BG.getField @"wuffs_base__table_u32_width" x0
                                , wuffs_base__table_u32_height = BG.getField @"wuffs_base__table_u32_height" x0
                                , wuffs_base__table_u32_stride = BG.getField @"wuffs_base__table_u32_stride" x0
                                }
      , BG.getField @"wuffs_base__table_u32_ptr" x0
      )

instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__table_u32_ptr" (BG.Ptr Wuffs_base__table_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u32_ptr")

instance HasCField.HasCField Wuffs_base__table_u32 "wuffs_base__table_u32_ptr" where

  type CFieldType Wuffs_base__table_u32 "wuffs_base__table_u32_ptr" =
    BG.Ptr HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @width@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1722:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__table_u32_width" Wuffs_base__table_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u32 { wuffs_base__table_u32_width = y1
                                , wuffs_base__table_u32_ptr = BG.getField @"wuffs_base__table_u32_ptr" x0
                                , wuffs_base__table_u32_height = BG.getField @"wuffs_base__table_u32_height" x0
                                , wuffs_base__table_u32_stride = BG.getField @"wuffs_base__table_u32_stride" x0
                                }
      , BG.getField @"wuffs_base__table_u32_width" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__table_u32_width" (BG.Ptr Wuffs_base__table_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u32_width")

instance HasCField.HasCField Wuffs_base__table_u32 "wuffs_base__table_u32_width" where

  type CFieldType Wuffs_base__table_u32 "wuffs_base__table_u32_width" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @height@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1722:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__table_u32_height" Wuffs_base__table_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u32 { wuffs_base__table_u32_height = y1
                                , wuffs_base__table_u32_ptr = BG.getField @"wuffs_base__table_u32_ptr" x0
                                , wuffs_base__table_u32_width = BG.getField @"wuffs_base__table_u32_width" x0
                                , wuffs_base__table_u32_stride = BG.getField @"wuffs_base__table_u32_stride" x0
                                }
      , BG.getField @"wuffs_base__table_u32_height" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__table_u32_height" (BG.Ptr Wuffs_base__table_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u32_height")

instance HasCField.HasCField Wuffs_base__table_u32 "wuffs_base__table_u32_height" where

  type CFieldType Wuffs_base__table_u32 "wuffs_base__table_u32_height" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @stride@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1722:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__table_u32_stride" Wuffs_base__table_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u32 { wuffs_base__table_u32_stride = y1
                                , wuffs_base__table_u32_ptr = BG.getField @"wuffs_base__table_u32_ptr" x0
                                , wuffs_base__table_u32_width = BG.getField @"wuffs_base__table_u32_width" x0
                                , wuffs_base__table_u32_height = BG.getField @"wuffs_base__table_u32_height" x0
                                }
      , BG.getField @"wuffs_base__table_u32_stride" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__table_u32_stride" (BG.Ptr Wuffs_base__table_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u32_stride")

instance HasCField.HasCField Wuffs_base__table_u32 "wuffs_base__table_u32_stride" where

  type CFieldType Wuffs_base__table_u32 "wuffs_base__table_u32_stride" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 24

{-| __C declaration:__ @struct wuffs_base__table_u64@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1723:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__table_u64 = Wuffs_base__table_u64
  { wuffs_base__table_u64_ptr :: BG.Ptr HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @ptr@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1723:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__table_u64_width :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @width@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1723:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__table_u64_height :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @height@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1723:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__table_u64_stride :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @stride@

         __defined at:__ @wuffs\/wuffs-v0.4.c 1723:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__table_u64 where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__table_u64 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__table_u64
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u64_ptr") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u64_width") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u64_height") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__table_u64_stride") ptr0

instance Marshal.WriteRaw Wuffs_base__table_u64 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__table_u64
            wuffs_base__table_u64_ptr2
            wuffs_base__table_u64_width3
            wuffs_base__table_u64_height4
            wuffs_base__table_u64_stride5 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u64_ptr") ptr0 wuffs_base__table_u64_ptr2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u64_width") ptr0 wuffs_base__table_u64_width3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u64_height") ptr0 wuffs_base__table_u64_height4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__table_u64_stride") ptr0 wuffs_base__table_u64_stride5

deriving via Marshal.EquivStorable Wuffs_base__table_u64 instance BG.Storable Wuffs_base__table_u64

deriving via Struct.IsStructViaReadRaw Wuffs_base__table_u64 instance Struct.IsStruct Wuffs_base__table_u64

{-| __C declaration:__ @ptr@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1723:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__table_u64_ptr" Wuffs_base__table_u64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u64 { wuffs_base__table_u64_ptr = y1
                                , wuffs_base__table_u64_width = BG.getField @"wuffs_base__table_u64_width" x0
                                , wuffs_base__table_u64_height = BG.getField @"wuffs_base__table_u64_height" x0
                                , wuffs_base__table_u64_stride = BG.getField @"wuffs_base__table_u64_stride" x0
                                }
      , BG.getField @"wuffs_base__table_u64_ptr" x0
      )

instance ( ty ~ BG.Ptr HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__table_u64_ptr" (BG.Ptr Wuffs_base__table_u64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u64_ptr")

instance HasCField.HasCField Wuffs_base__table_u64 "wuffs_base__table_u64_ptr" where

  type CFieldType Wuffs_base__table_u64 "wuffs_base__table_u64_ptr" =
    BG.Ptr HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @width@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1723:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__table_u64_width" Wuffs_base__table_u64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u64 { wuffs_base__table_u64_width = y1
                                , wuffs_base__table_u64_ptr = BG.getField @"wuffs_base__table_u64_ptr" x0
                                , wuffs_base__table_u64_height = BG.getField @"wuffs_base__table_u64_height" x0
                                , wuffs_base__table_u64_stride = BG.getField @"wuffs_base__table_u64_stride" x0
                                }
      , BG.getField @"wuffs_base__table_u64_width" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__table_u64_width" (BG.Ptr Wuffs_base__table_u64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u64_width")

instance HasCField.HasCField Wuffs_base__table_u64 "wuffs_base__table_u64_width" where

  type CFieldType Wuffs_base__table_u64 "wuffs_base__table_u64_width" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @height@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1723:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__table_u64_height" Wuffs_base__table_u64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u64 { wuffs_base__table_u64_height = y1
                                , wuffs_base__table_u64_ptr = BG.getField @"wuffs_base__table_u64_ptr" x0
                                , wuffs_base__table_u64_width = BG.getField @"wuffs_base__table_u64_width" x0
                                , wuffs_base__table_u64_stride = BG.getField @"wuffs_base__table_u64_stride" x0
                                }
      , BG.getField @"wuffs_base__table_u64_height" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__table_u64_height" (BG.Ptr Wuffs_base__table_u64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u64_height")

instance HasCField.HasCField Wuffs_base__table_u64 "wuffs_base__table_u64_height" where

  type CFieldType Wuffs_base__table_u64 "wuffs_base__table_u64_height" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @stride@

    __defined at:__ @wuffs\/wuffs-v0.4.c 1723:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__table_u64_stride" Wuffs_base__table_u64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__table_u64 { wuffs_base__table_u64_stride = y1
                                , wuffs_base__table_u64_ptr = BG.getField @"wuffs_base__table_u64_ptr" x0
                                , wuffs_base__table_u64_width = BG.getField @"wuffs_base__table_u64_width" x0
                                , wuffs_base__table_u64_height = BG.getField @"wuffs_base__table_u64_height" x0
                                }
      , BG.getField @"wuffs_base__table_u64_stride" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__table_u64_stride" (BG.Ptr Wuffs_base__table_u64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__table_u64_stride")

instance HasCField.HasCField Wuffs_base__table_u64 "wuffs_base__table_u64_stride" where

  type CFieldType Wuffs_base__table_u64 "wuffs_base__table_u64_stride" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 24

{-| __C declaration:__ @struct wuffs_base__range_ii_u32__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2063:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__range_ii_u32 = Wuffs_base__range_ii_u32
  { wuffs_base__range_ii_u32_min_incl :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @min_incl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2064:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__range_ii_u32_max_incl :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @max_incl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2065:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__range_ii_u32 where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wuffs_base__range_ii_u32 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__range_ii_u32
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__range_ii_u32_min_incl") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__range_ii_u32_max_incl") ptr0

instance Marshal.WriteRaw Wuffs_base__range_ii_u32 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__range_ii_u32
            wuffs_base__range_ii_u32_min_incl2
            wuffs_base__range_ii_u32_max_incl3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__range_ii_u32_min_incl") ptr0 wuffs_base__range_ii_u32_min_incl2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__range_ii_u32_max_incl") ptr0 wuffs_base__range_ii_u32_max_incl3

deriving via Marshal.EquivStorable Wuffs_base__range_ii_u32 instance BG.Storable Wuffs_base__range_ii_u32

deriving via Struct.IsStructViaReadRaw Wuffs_base__range_ii_u32 instance Struct.IsStruct Wuffs_base__range_ii_u32

{-| __C declaration:__ @min_incl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2064:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__range_ii_u32_min_incl" Wuffs_base__range_ii_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__range_ii_u32 { wuffs_base__range_ii_u32_min_incl = y1
                                   , wuffs_base__range_ii_u32_max_incl = BG.getField @"wuffs_base__range_ii_u32_max_incl" x0
                                   }
      , BG.getField @"wuffs_base__range_ii_u32_min_incl" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__range_ii_u32_min_incl" (BG.Ptr Wuffs_base__range_ii_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__range_ii_u32_min_incl")

instance HasCField.HasCField Wuffs_base__range_ii_u32 "wuffs_base__range_ii_u32_min_incl" where

  type CFieldType Wuffs_base__range_ii_u32 "wuffs_base__range_ii_u32_min_incl" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @max_incl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2065:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__range_ii_u32_max_incl" Wuffs_base__range_ii_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__range_ii_u32 { wuffs_base__range_ii_u32_max_incl = y1
                                   , wuffs_base__range_ii_u32_min_incl = BG.getField @"wuffs_base__range_ii_u32_min_incl" x0
                                   }
      , BG.getField @"wuffs_base__range_ii_u32_max_incl" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__range_ii_u32_max_incl" (BG.Ptr Wuffs_base__range_ii_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__range_ii_u32_max_incl")

instance HasCField.HasCField Wuffs_base__range_ii_u32 "wuffs_base__range_ii_u32_max_incl" where

  type CFieldType Wuffs_base__range_ii_u32 "wuffs_base__range_ii_u32_max_incl" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 4

{-| __C declaration:__ @struct wuffs_base__range_ie_u32__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2182:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__range_ie_u32 = Wuffs_base__range_ie_u32
  { wuffs_base__range_ie_u32_min_incl :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @min_incl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2183:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__range_ie_u32_max_excl :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @max_excl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2184:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__range_ie_u32 where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wuffs_base__range_ie_u32 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__range_ie_u32
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__range_ie_u32_min_incl") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__range_ie_u32_max_excl") ptr0

instance Marshal.WriteRaw Wuffs_base__range_ie_u32 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__range_ie_u32
            wuffs_base__range_ie_u32_min_incl2
            wuffs_base__range_ie_u32_max_excl3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__range_ie_u32_min_incl") ptr0 wuffs_base__range_ie_u32_min_incl2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__range_ie_u32_max_excl") ptr0 wuffs_base__range_ie_u32_max_excl3

deriving via Marshal.EquivStorable Wuffs_base__range_ie_u32 instance BG.Storable Wuffs_base__range_ie_u32

deriving via Struct.IsStructViaReadRaw Wuffs_base__range_ie_u32 instance Struct.IsStruct Wuffs_base__range_ie_u32

{-| __C declaration:__ @min_incl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2183:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__range_ie_u32_min_incl" Wuffs_base__range_ie_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__range_ie_u32 { wuffs_base__range_ie_u32_min_incl = y1
                                   , wuffs_base__range_ie_u32_max_excl = BG.getField @"wuffs_base__range_ie_u32_max_excl" x0
                                   }
      , BG.getField @"wuffs_base__range_ie_u32_min_incl" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__range_ie_u32_min_incl" (BG.Ptr Wuffs_base__range_ie_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__range_ie_u32_min_incl")

instance HasCField.HasCField Wuffs_base__range_ie_u32 "wuffs_base__range_ie_u32_min_incl" where

  type CFieldType Wuffs_base__range_ie_u32 "wuffs_base__range_ie_u32_min_incl" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @max_excl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2184:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__range_ie_u32_max_excl" Wuffs_base__range_ie_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__range_ie_u32 { wuffs_base__range_ie_u32_max_excl = y1
                                   , wuffs_base__range_ie_u32_min_incl = BG.getField @"wuffs_base__range_ie_u32_min_incl" x0
                                   }
      , BG.getField @"wuffs_base__range_ie_u32_max_excl" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__range_ie_u32_max_excl" (BG.Ptr Wuffs_base__range_ie_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__range_ie_u32_max_excl")

instance HasCField.HasCField Wuffs_base__range_ie_u32 "wuffs_base__range_ie_u32_max_excl" where

  type CFieldType Wuffs_base__range_ie_u32 "wuffs_base__range_ie_u32_max_excl" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 4

{-| __C declaration:__ @struct wuffs_base__range_ii_u64__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2312:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__range_ii_u64 = Wuffs_base__range_ii_u64
  { wuffs_base__range_ii_u64_min_incl :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @min_incl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2313:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__range_ii_u64_max_incl :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @max_incl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2314:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__range_ii_u64 where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__range_ii_u64 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__range_ii_u64
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__range_ii_u64_min_incl") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__range_ii_u64_max_incl") ptr0

instance Marshal.WriteRaw Wuffs_base__range_ii_u64 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__range_ii_u64
            wuffs_base__range_ii_u64_min_incl2
            wuffs_base__range_ii_u64_max_incl3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__range_ii_u64_min_incl") ptr0 wuffs_base__range_ii_u64_min_incl2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__range_ii_u64_max_incl") ptr0 wuffs_base__range_ii_u64_max_incl3

deriving via Marshal.EquivStorable Wuffs_base__range_ii_u64 instance BG.Storable Wuffs_base__range_ii_u64

deriving via Struct.IsStructViaReadRaw Wuffs_base__range_ii_u64 instance Struct.IsStruct Wuffs_base__range_ii_u64

{-| __C declaration:__ @min_incl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2313:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__range_ii_u64_min_incl" Wuffs_base__range_ii_u64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__range_ii_u64 { wuffs_base__range_ii_u64_min_incl = y1
                                   , wuffs_base__range_ii_u64_max_incl = BG.getField @"wuffs_base__range_ii_u64_max_incl" x0
                                   }
      , BG.getField @"wuffs_base__range_ii_u64_min_incl" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__range_ii_u64_min_incl" (BG.Ptr Wuffs_base__range_ii_u64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__range_ii_u64_min_incl")

instance HasCField.HasCField Wuffs_base__range_ii_u64 "wuffs_base__range_ii_u64_min_incl" where

  type CFieldType Wuffs_base__range_ii_u64 "wuffs_base__range_ii_u64_min_incl" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @max_incl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2314:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__range_ii_u64_max_incl" Wuffs_base__range_ii_u64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__range_ii_u64 { wuffs_base__range_ii_u64_max_incl = y1
                                   , wuffs_base__range_ii_u64_min_incl = BG.getField @"wuffs_base__range_ii_u64_min_incl" x0
                                   }
      , BG.getField @"wuffs_base__range_ii_u64_max_incl" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__range_ii_u64_max_incl" (BG.Ptr Wuffs_base__range_ii_u64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__range_ii_u64_max_incl")

instance HasCField.HasCField Wuffs_base__range_ii_u64 "wuffs_base__range_ii_u64_max_incl" where

  type CFieldType Wuffs_base__range_ii_u64 "wuffs_base__range_ii_u64_max_incl" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @struct wuffs_base__range_ie_u64__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2431:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__range_ie_u64 = Wuffs_base__range_ie_u64
  { wuffs_base__range_ie_u64_min_incl :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @min_incl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2432:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__range_ie_u64_max_excl :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @max_excl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2433:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__range_ie_u64 where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__range_ie_u64 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__range_ie_u64
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__range_ie_u64_min_incl") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__range_ie_u64_max_excl") ptr0

instance Marshal.WriteRaw Wuffs_base__range_ie_u64 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__range_ie_u64
            wuffs_base__range_ie_u64_min_incl2
            wuffs_base__range_ie_u64_max_excl3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__range_ie_u64_min_incl") ptr0 wuffs_base__range_ie_u64_min_incl2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__range_ie_u64_max_excl") ptr0 wuffs_base__range_ie_u64_max_excl3

deriving via Marshal.EquivStorable Wuffs_base__range_ie_u64 instance BG.Storable Wuffs_base__range_ie_u64

deriving via Struct.IsStructViaReadRaw Wuffs_base__range_ie_u64 instance Struct.IsStruct Wuffs_base__range_ie_u64

{-| __C declaration:__ @min_incl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2432:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__range_ie_u64_min_incl" Wuffs_base__range_ie_u64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__range_ie_u64 { wuffs_base__range_ie_u64_min_incl = y1
                                   , wuffs_base__range_ie_u64_max_excl = BG.getField @"wuffs_base__range_ie_u64_max_excl" x0
                                   }
      , BG.getField @"wuffs_base__range_ie_u64_min_incl" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__range_ie_u64_min_incl" (BG.Ptr Wuffs_base__range_ie_u64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__range_ie_u64_min_incl")

instance HasCField.HasCField Wuffs_base__range_ie_u64 "wuffs_base__range_ie_u64_min_incl" where

  type CFieldType Wuffs_base__range_ie_u64 "wuffs_base__range_ie_u64_min_incl" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @max_excl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2433:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__range_ie_u64_max_excl" Wuffs_base__range_ie_u64 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__range_ie_u64 { wuffs_base__range_ie_u64_max_excl = y1
                                   , wuffs_base__range_ie_u64_min_incl = BG.getField @"wuffs_base__range_ie_u64_min_incl" x0
                                   }
      , BG.getField @"wuffs_base__range_ie_u64_max_excl" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__range_ie_u64_max_excl" (BG.Ptr Wuffs_base__range_ie_u64) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__range_ie_u64_max_excl")

instance HasCField.HasCField Wuffs_base__range_ie_u64 "wuffs_base__range_ie_u64_max_excl" where

  type CFieldType Wuffs_base__range_ie_u64 "wuffs_base__range_ie_u64_max_excl" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @struct wuffs_base__rect_ii_u32__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2561:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__rect_ii_u32 = Wuffs_base__rect_ii_u32
  { wuffs_base__rect_ii_u32_min_incl_x :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @min_incl_x@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2562:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__rect_ii_u32_min_incl_y :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @min_incl_y@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2563:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__rect_ii_u32_max_incl_x :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @max_incl_x@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2564:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__rect_ii_u32_max_incl_y :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @max_incl_y@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2565:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__rect_ii_u32 where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wuffs_base__rect_ii_u32 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__rect_ii_u32
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__rect_ii_u32_min_incl_x") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__rect_ii_u32_min_incl_y") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__rect_ii_u32_max_incl_x") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__rect_ii_u32_max_incl_y") ptr0

instance Marshal.WriteRaw Wuffs_base__rect_ii_u32 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__rect_ii_u32
            wuffs_base__rect_ii_u32_min_incl_x2
            wuffs_base__rect_ii_u32_min_incl_y3
            wuffs_base__rect_ii_u32_max_incl_x4
            wuffs_base__rect_ii_u32_max_incl_y5 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__rect_ii_u32_min_incl_x") ptr0 wuffs_base__rect_ii_u32_min_incl_x2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__rect_ii_u32_min_incl_y") ptr0 wuffs_base__rect_ii_u32_min_incl_y3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__rect_ii_u32_max_incl_x") ptr0 wuffs_base__rect_ii_u32_max_incl_x4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__rect_ii_u32_max_incl_y") ptr0 wuffs_base__rect_ii_u32_max_incl_y5

deriving via Marshal.EquivStorable Wuffs_base__rect_ii_u32 instance BG.Storable Wuffs_base__rect_ii_u32

deriving via Struct.IsStructViaReadRaw Wuffs_base__rect_ii_u32 instance Struct.IsStruct Wuffs_base__rect_ii_u32

{-| __C declaration:__ @min_incl_x@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2562:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__rect_ii_u32_min_incl_x" Wuffs_base__rect_ii_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__rect_ii_u32 { wuffs_base__rect_ii_u32_min_incl_x = y1
                                  , wuffs_base__rect_ii_u32_min_incl_y = BG.getField @"wuffs_base__rect_ii_u32_min_incl_y" x0
                                  , wuffs_base__rect_ii_u32_max_incl_x = BG.getField @"wuffs_base__rect_ii_u32_max_incl_x" x0
                                  , wuffs_base__rect_ii_u32_max_incl_y = BG.getField @"wuffs_base__rect_ii_u32_max_incl_y" x0
                                  }
      , BG.getField @"wuffs_base__rect_ii_u32_min_incl_x" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__rect_ii_u32_min_incl_x" (BG.Ptr Wuffs_base__rect_ii_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__rect_ii_u32_min_incl_x")

instance HasCField.HasCField Wuffs_base__rect_ii_u32 "wuffs_base__rect_ii_u32_min_incl_x" where

  type CFieldType Wuffs_base__rect_ii_u32 "wuffs_base__rect_ii_u32_min_incl_x" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @min_incl_y@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2563:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__rect_ii_u32_min_incl_y" Wuffs_base__rect_ii_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__rect_ii_u32 { wuffs_base__rect_ii_u32_min_incl_y = y1
                                  , wuffs_base__rect_ii_u32_min_incl_x = BG.getField @"wuffs_base__rect_ii_u32_min_incl_x" x0
                                  , wuffs_base__rect_ii_u32_max_incl_x = BG.getField @"wuffs_base__rect_ii_u32_max_incl_x" x0
                                  , wuffs_base__rect_ii_u32_max_incl_y = BG.getField @"wuffs_base__rect_ii_u32_max_incl_y" x0
                                  }
      , BG.getField @"wuffs_base__rect_ii_u32_min_incl_y" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__rect_ii_u32_min_incl_y" (BG.Ptr Wuffs_base__rect_ii_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__rect_ii_u32_min_incl_y")

instance HasCField.HasCField Wuffs_base__rect_ii_u32 "wuffs_base__rect_ii_u32_min_incl_y" where

  type CFieldType Wuffs_base__rect_ii_u32 "wuffs_base__rect_ii_u32_min_incl_y" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 4

{-| __C declaration:__ @max_incl_x@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2564:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__rect_ii_u32_max_incl_x" Wuffs_base__rect_ii_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__rect_ii_u32 { wuffs_base__rect_ii_u32_max_incl_x = y1
                                  , wuffs_base__rect_ii_u32_min_incl_x = BG.getField @"wuffs_base__rect_ii_u32_min_incl_x" x0
                                  , wuffs_base__rect_ii_u32_min_incl_y = BG.getField @"wuffs_base__rect_ii_u32_min_incl_y" x0
                                  , wuffs_base__rect_ii_u32_max_incl_y = BG.getField @"wuffs_base__rect_ii_u32_max_incl_y" x0
                                  }
      , BG.getField @"wuffs_base__rect_ii_u32_max_incl_x" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__rect_ii_u32_max_incl_x" (BG.Ptr Wuffs_base__rect_ii_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__rect_ii_u32_max_incl_x")

instance HasCField.HasCField Wuffs_base__rect_ii_u32 "wuffs_base__rect_ii_u32_max_incl_x" where

  type CFieldType Wuffs_base__rect_ii_u32 "wuffs_base__rect_ii_u32_max_incl_x" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @max_incl_y@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2565:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__rect_ii_u32_max_incl_y" Wuffs_base__rect_ii_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__rect_ii_u32 { wuffs_base__rect_ii_u32_max_incl_y = y1
                                  , wuffs_base__rect_ii_u32_min_incl_x = BG.getField @"wuffs_base__rect_ii_u32_min_incl_x" x0
                                  , wuffs_base__rect_ii_u32_min_incl_y = BG.getField @"wuffs_base__rect_ii_u32_min_incl_y" x0
                                  , wuffs_base__rect_ii_u32_max_incl_x = BG.getField @"wuffs_base__rect_ii_u32_max_incl_x" x0
                                  }
      , BG.getField @"wuffs_base__rect_ii_u32_max_incl_y" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__rect_ii_u32_max_incl_y" (BG.Ptr Wuffs_base__rect_ii_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__rect_ii_u32_max_incl_y")

instance HasCField.HasCField Wuffs_base__rect_ii_u32 "wuffs_base__rect_ii_u32_max_incl_y" where

  type CFieldType Wuffs_base__rect_ii_u32 "wuffs_base__rect_ii_u32_max_incl_y" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 12

{-| __C declaration:__ @struct wuffs_base__rect_ie_u32__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2696:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__rect_ie_u32 = Wuffs_base__rect_ie_u32
  { wuffs_base__rect_ie_u32_min_incl_x :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @min_incl_x@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2697:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__rect_ie_u32_min_incl_y :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @min_incl_y@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2698:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__rect_ie_u32_max_excl_x :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @max_excl_x@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2699:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__rect_ie_u32_max_excl_y :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @max_excl_y@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2700:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__rect_ie_u32 where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wuffs_base__rect_ie_u32 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__rect_ie_u32
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__rect_ie_u32_min_incl_x") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__rect_ie_u32_min_incl_y") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__rect_ie_u32_max_excl_x") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__rect_ie_u32_max_excl_y") ptr0

instance Marshal.WriteRaw Wuffs_base__rect_ie_u32 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__rect_ie_u32
            wuffs_base__rect_ie_u32_min_incl_x2
            wuffs_base__rect_ie_u32_min_incl_y3
            wuffs_base__rect_ie_u32_max_excl_x4
            wuffs_base__rect_ie_u32_max_excl_y5 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__rect_ie_u32_min_incl_x") ptr0 wuffs_base__rect_ie_u32_min_incl_x2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__rect_ie_u32_min_incl_y") ptr0 wuffs_base__rect_ie_u32_min_incl_y3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__rect_ie_u32_max_excl_x") ptr0 wuffs_base__rect_ie_u32_max_excl_x4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__rect_ie_u32_max_excl_y") ptr0 wuffs_base__rect_ie_u32_max_excl_y5

deriving via Marshal.EquivStorable Wuffs_base__rect_ie_u32 instance BG.Storable Wuffs_base__rect_ie_u32

deriving via Struct.IsStructViaReadRaw Wuffs_base__rect_ie_u32 instance Struct.IsStruct Wuffs_base__rect_ie_u32

{-| __C declaration:__ @min_incl_x@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2697:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__rect_ie_u32_min_incl_x" Wuffs_base__rect_ie_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__rect_ie_u32 { wuffs_base__rect_ie_u32_min_incl_x = y1
                                  , wuffs_base__rect_ie_u32_min_incl_y = BG.getField @"wuffs_base__rect_ie_u32_min_incl_y" x0
                                  , wuffs_base__rect_ie_u32_max_excl_x = BG.getField @"wuffs_base__rect_ie_u32_max_excl_x" x0
                                  , wuffs_base__rect_ie_u32_max_excl_y = BG.getField @"wuffs_base__rect_ie_u32_max_excl_y" x0
                                  }
      , BG.getField @"wuffs_base__rect_ie_u32_min_incl_x" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__rect_ie_u32_min_incl_x" (BG.Ptr Wuffs_base__rect_ie_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__rect_ie_u32_min_incl_x")

instance HasCField.HasCField Wuffs_base__rect_ie_u32 "wuffs_base__rect_ie_u32_min_incl_x" where

  type CFieldType Wuffs_base__rect_ie_u32 "wuffs_base__rect_ie_u32_min_incl_x" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @min_incl_y@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2698:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__rect_ie_u32_min_incl_y" Wuffs_base__rect_ie_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__rect_ie_u32 { wuffs_base__rect_ie_u32_min_incl_y = y1
                                  , wuffs_base__rect_ie_u32_min_incl_x = BG.getField @"wuffs_base__rect_ie_u32_min_incl_x" x0
                                  , wuffs_base__rect_ie_u32_max_excl_x = BG.getField @"wuffs_base__rect_ie_u32_max_excl_x" x0
                                  , wuffs_base__rect_ie_u32_max_excl_y = BG.getField @"wuffs_base__rect_ie_u32_max_excl_y" x0
                                  }
      , BG.getField @"wuffs_base__rect_ie_u32_min_incl_y" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__rect_ie_u32_min_incl_y" (BG.Ptr Wuffs_base__rect_ie_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__rect_ie_u32_min_incl_y")

instance HasCField.HasCField Wuffs_base__rect_ie_u32 "wuffs_base__rect_ie_u32_min_incl_y" where

  type CFieldType Wuffs_base__rect_ie_u32 "wuffs_base__rect_ie_u32_min_incl_y" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 4

{-| __C declaration:__ @max_excl_x@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2699:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__rect_ie_u32_max_excl_x" Wuffs_base__rect_ie_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__rect_ie_u32 { wuffs_base__rect_ie_u32_max_excl_x = y1
                                  , wuffs_base__rect_ie_u32_min_incl_x = BG.getField @"wuffs_base__rect_ie_u32_min_incl_x" x0
                                  , wuffs_base__rect_ie_u32_min_incl_y = BG.getField @"wuffs_base__rect_ie_u32_min_incl_y" x0
                                  , wuffs_base__rect_ie_u32_max_excl_y = BG.getField @"wuffs_base__rect_ie_u32_max_excl_y" x0
                                  }
      , BG.getField @"wuffs_base__rect_ie_u32_max_excl_x" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__rect_ie_u32_max_excl_x" (BG.Ptr Wuffs_base__rect_ie_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__rect_ie_u32_max_excl_x")

instance HasCField.HasCField Wuffs_base__rect_ie_u32 "wuffs_base__rect_ie_u32_max_excl_x" where

  type CFieldType Wuffs_base__rect_ie_u32 "wuffs_base__rect_ie_u32_max_excl_x" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @max_excl_y@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2700:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__rect_ie_u32_max_excl_y" Wuffs_base__rect_ie_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__rect_ie_u32 { wuffs_base__rect_ie_u32_max_excl_y = y1
                                  , wuffs_base__rect_ie_u32_min_incl_x = BG.getField @"wuffs_base__rect_ie_u32_min_incl_x" x0
                                  , wuffs_base__rect_ie_u32_min_incl_y = BG.getField @"wuffs_base__rect_ie_u32_min_incl_y" x0
                                  , wuffs_base__rect_ie_u32_max_excl_x = BG.getField @"wuffs_base__rect_ie_u32_max_excl_x" x0
                                  }
      , BG.getField @"wuffs_base__rect_ie_u32_max_excl_y" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__rect_ie_u32_max_excl_y" (BG.Ptr Wuffs_base__rect_ie_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__rect_ie_u32_max_excl_y")

instance HasCField.HasCField Wuffs_base__rect_ie_u32 "wuffs_base__rect_ie_u32_max_excl_y" where

  type CFieldType Wuffs_base__rect_ie_u32 "wuffs_base__rect_ie_u32_max_excl_y" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 12

{-| __C declaration:__ @struct wuffs_base__more_information__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2859:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__more_information = Wuffs_base__more_information
  { wuffs_base__more_information_flavor :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @flavor@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2860:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__more_information_w :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @w@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2861:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__more_information_x :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @x@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2862:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__more_information_y :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @y@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2863:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__more_information_z :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @z@

         __defined at:__ @wuffs\/wuffs-v0.4.c 2864:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__more_information where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__more_information where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__more_information
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__more_information_flavor") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__more_information_w") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__more_information_x") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__more_information_y") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__more_information_z") ptr0

instance Marshal.WriteRaw Wuffs_base__more_information where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__more_information
            wuffs_base__more_information_flavor2
            wuffs_base__more_information_w3
            wuffs_base__more_information_x4
            wuffs_base__more_information_y5
            wuffs_base__more_information_z6 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__more_information_flavor") ptr0 wuffs_base__more_information_flavor2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__more_information_w") ptr0 wuffs_base__more_information_w3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__more_information_x") ptr0 wuffs_base__more_information_x4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__more_information_y") ptr0 wuffs_base__more_information_y5
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__more_information_z") ptr0 wuffs_base__more_information_z6

deriving via Marshal.EquivStorable Wuffs_base__more_information instance BG.Storable Wuffs_base__more_information

deriving via Struct.IsStructViaReadRaw Wuffs_base__more_information instance Struct.IsStruct Wuffs_base__more_information

{-| __C declaration:__ @flavor@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2860:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__more_information_flavor" Wuffs_base__more_information ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__more_information { wuffs_base__more_information_flavor = y1
                                       , wuffs_base__more_information_w = BG.getField @"wuffs_base__more_information_w" x0
                                       , wuffs_base__more_information_x = BG.getField @"wuffs_base__more_information_x" x0
                                       , wuffs_base__more_information_y = BG.getField @"wuffs_base__more_information_y" x0
                                       , wuffs_base__more_information_z = BG.getField @"wuffs_base__more_information_z" x0
                                       }
      , BG.getField @"wuffs_base__more_information_flavor" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__more_information_flavor" (BG.Ptr Wuffs_base__more_information) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__more_information_flavor")

instance HasCField.HasCField Wuffs_base__more_information "wuffs_base__more_information_flavor" where

  type CFieldType Wuffs_base__more_information "wuffs_base__more_information_flavor" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @w@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2861:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__more_information_w" Wuffs_base__more_information ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__more_information { wuffs_base__more_information_w = y1
                                       , wuffs_base__more_information_flavor = BG.getField @"wuffs_base__more_information_flavor" x0
                                       , wuffs_base__more_information_x = BG.getField @"wuffs_base__more_information_x" x0
                                       , wuffs_base__more_information_y = BG.getField @"wuffs_base__more_information_y" x0
                                       , wuffs_base__more_information_z = BG.getField @"wuffs_base__more_information_z" x0
                                       }
      , BG.getField @"wuffs_base__more_information_w" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__more_information_w" (BG.Ptr Wuffs_base__more_information) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__more_information_w")

instance HasCField.HasCField Wuffs_base__more_information "wuffs_base__more_information_w" where

  type CFieldType Wuffs_base__more_information "wuffs_base__more_information_w" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 4

{-| __C declaration:__ @x@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2862:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__more_information_x" Wuffs_base__more_information ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__more_information { wuffs_base__more_information_x = y1
                                       , wuffs_base__more_information_flavor = BG.getField @"wuffs_base__more_information_flavor" x0
                                       , wuffs_base__more_information_w = BG.getField @"wuffs_base__more_information_w" x0
                                       , wuffs_base__more_information_y = BG.getField @"wuffs_base__more_information_y" x0
                                       , wuffs_base__more_information_z = BG.getField @"wuffs_base__more_information_z" x0
                                       }
      , BG.getField @"wuffs_base__more_information_x" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__more_information_x" (BG.Ptr Wuffs_base__more_information) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__more_information_x")

instance HasCField.HasCField Wuffs_base__more_information "wuffs_base__more_information_x" where

  type CFieldType Wuffs_base__more_information "wuffs_base__more_information_x" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @y@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2863:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__more_information_y" Wuffs_base__more_information ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__more_information { wuffs_base__more_information_y = y1
                                       , wuffs_base__more_information_flavor = BG.getField @"wuffs_base__more_information_flavor" x0
                                       , wuffs_base__more_information_w = BG.getField @"wuffs_base__more_information_w" x0
                                       , wuffs_base__more_information_x = BG.getField @"wuffs_base__more_information_x" x0
                                       , wuffs_base__more_information_z = BG.getField @"wuffs_base__more_information_z" x0
                                       }
      , BG.getField @"wuffs_base__more_information_y" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__more_information_y" (BG.Ptr Wuffs_base__more_information) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__more_information_y")

instance HasCField.HasCField Wuffs_base__more_information "wuffs_base__more_information_y" where

  type CFieldType Wuffs_base__more_information "wuffs_base__more_information_y" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @z@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2864:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__more_information_z" Wuffs_base__more_information ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__more_information { wuffs_base__more_information_z = y1
                                       , wuffs_base__more_information_flavor = BG.getField @"wuffs_base__more_information_flavor" x0
                                       , wuffs_base__more_information_w = BG.getField @"wuffs_base__more_information_w" x0
                                       , wuffs_base__more_information_x = BG.getField @"wuffs_base__more_information_x" x0
                                       , wuffs_base__more_information_y = BG.getField @"wuffs_base__more_information_y" x0
                                       }
      , BG.getField @"wuffs_base__more_information_z" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__more_information_z" (BG.Ptr Wuffs_base__more_information) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__more_information_z")

instance HasCField.HasCField Wuffs_base__more_information "wuffs_base__more_information_z" where

  type CFieldType Wuffs_base__more_information "wuffs_base__more_information_z" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 24

{-| __C declaration:__ @macro WUFFS_BASE__MORE_INFORMATION__FLAVOR__IO_REDIRECT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2884:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__MORE_INFORMATION__FLAVOR__IO_REDIRECT :: BG.CInt
wUFFS_BASE__MORE_INFORMATION__FLAVOR__IO_REDIRECT =
  (1 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__MORE_INFORMATION__FLAVOR__IO_SEEK@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2885:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__MORE_INFORMATION__FLAVOR__IO_SEEK :: BG.CInt
wUFFS_BASE__MORE_INFORMATION__FLAVOR__IO_SEEK =
  (2 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__MORE_INFORMATION__FLAVOR__METADATA_RAW_PASSTHROUGH@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2886:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__MORE_INFORMATION__FLAVOR__METADATA_RAW_PASSTHROUGH :: BG.CInt
wUFFS_BASE__MORE_INFORMATION__FLAVOR__METADATA_RAW_PASSTHROUGH =
  (3 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__MORE_INFORMATION__FLAVOR__METADATA_RAW_TRANSFORM@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2887:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__MORE_INFORMATION__FLAVOR__METADATA_RAW_TRANSFORM :: BG.CInt
wUFFS_BASE__MORE_INFORMATION__FLAVOR__METADATA_RAW_TRANSFORM =
  (4 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__MORE_INFORMATION__FLAVOR__METADATA_PARSED@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2888:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__MORE_INFORMATION__FLAVOR__METADATA_PARSED :: BG.CInt
wUFFS_BASE__MORE_INFORMATION__FLAVOR__METADATA_PARSED =
  (5 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__WHITE_X@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2954:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__WHITE_X :: BG.CInt
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__WHITE_X =
  (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__WHITE_Y@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2955:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__WHITE_Y :: BG.CInt
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__WHITE_Y =
  (1 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__RED_X@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2956:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__RED_X :: BG.CInt
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__RED_X =
  (2 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__RED_Y@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2957:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__RED_Y :: BG.CInt
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__RED_Y =
  (3 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__GREEN_X@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2958:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__GREEN_X :: BG.CInt
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__GREEN_X =
  (4 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__GREEN_Y@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2959:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__GREEN_Y :: BG.CInt
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__GREEN_Y =
  (5 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__BLUE_X@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2960:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__BLUE_X :: BG.CInt
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__BLUE_X =
  (6 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__BLUE_Y@

    __defined at:__ @wuffs\/wuffs-v0.4.c 2961:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__BLUE_Y :: BG.CInt
wUFFS_BASE__MORE_INFORMATION__METADATA_PARSED__CHRM__BLUE_Y =
  (7 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__SRGB_RENDERING_INTENT__PERCEPTUAL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3029:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__SRGB_RENDERING_INTENT__PERCEPTUAL :: BG.CInt
wUFFS_BASE__SRGB_RENDERING_INTENT__PERCEPTUAL =
  (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__SRGB_RENDERING_INTENT__RELATIVE_COLORIMETRIC@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3030:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__SRGB_RENDERING_INTENT__RELATIVE_COLORIMETRIC :: BG.CInt
wUFFS_BASE__SRGB_RENDERING_INTENT__RELATIVE_COLORIMETRIC =
  (1 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__SRGB_RENDERING_INTENT__SATURATION@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3031:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__SRGB_RENDERING_INTENT__SATURATION :: BG.CInt
wUFFS_BASE__SRGB_RENDERING_INTENT__SATURATION =
  (2 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__SRGB_RENDERING_INTENT__ABSOLUTE_COLORIMETRIC@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3032:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__SRGB_RENDERING_INTENT__ABSOLUTE_COLORIMETRIC :: BG.CInt
wUFFS_BASE__SRGB_RENDERING_INTENT__ABSOLUTE_COLORIMETRIC =
  (3 :: BG.CInt)

{-| __C declaration:__ @struct wuffs_base__io_buffer_meta__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3102:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__io_buffer_meta = Wuffs_base__io_buffer_meta
  { wuffs_base__io_buffer_meta_wi :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @wi@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3103:10@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__io_buffer_meta_ri :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @ri@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3104:10@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__io_buffer_meta_pos :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @pos@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3105:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__io_buffer_meta_closed :: BG.CBool
    {- ^ __C declaration:__ @closed@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3106:8@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__io_buffer_meta where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__io_buffer_meta where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__io_buffer_meta
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__io_buffer_meta_wi") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__io_buffer_meta_ri") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__io_buffer_meta_pos") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__io_buffer_meta_closed") ptr0

instance Marshal.WriteRaw Wuffs_base__io_buffer_meta where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__io_buffer_meta
            wuffs_base__io_buffer_meta_wi2
            wuffs_base__io_buffer_meta_ri3
            wuffs_base__io_buffer_meta_pos4
            wuffs_base__io_buffer_meta_closed5 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__io_buffer_meta_wi") ptr0 wuffs_base__io_buffer_meta_wi2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__io_buffer_meta_ri") ptr0 wuffs_base__io_buffer_meta_ri3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__io_buffer_meta_pos") ptr0 wuffs_base__io_buffer_meta_pos4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__io_buffer_meta_closed") ptr0 wuffs_base__io_buffer_meta_closed5

deriving via Marshal.EquivStorable Wuffs_base__io_buffer_meta instance BG.Storable Wuffs_base__io_buffer_meta

deriving via Struct.IsStructViaReadRaw Wuffs_base__io_buffer_meta instance Struct.IsStruct Wuffs_base__io_buffer_meta

{-| __C declaration:__ @wi@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3103:10@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__io_buffer_meta_wi" Wuffs_base__io_buffer_meta ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__io_buffer_meta { wuffs_base__io_buffer_meta_wi = y1
                                     , wuffs_base__io_buffer_meta_ri = BG.getField @"wuffs_base__io_buffer_meta_ri" x0
                                     , wuffs_base__io_buffer_meta_pos = BG.getField @"wuffs_base__io_buffer_meta_pos" x0
                                     , wuffs_base__io_buffer_meta_closed = BG.getField @"wuffs_base__io_buffer_meta_closed" x0
                                     }
      , BG.getField @"wuffs_base__io_buffer_meta_wi" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__io_buffer_meta_wi" (BG.Ptr Wuffs_base__io_buffer_meta) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__io_buffer_meta_wi")

instance HasCField.HasCField Wuffs_base__io_buffer_meta "wuffs_base__io_buffer_meta_wi" where

  type CFieldType Wuffs_base__io_buffer_meta "wuffs_base__io_buffer_meta_wi" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @ri@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3104:10@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__io_buffer_meta_ri" Wuffs_base__io_buffer_meta ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__io_buffer_meta { wuffs_base__io_buffer_meta_ri = y1
                                     , wuffs_base__io_buffer_meta_wi = BG.getField @"wuffs_base__io_buffer_meta_wi" x0
                                     , wuffs_base__io_buffer_meta_pos = BG.getField @"wuffs_base__io_buffer_meta_pos" x0
                                     , wuffs_base__io_buffer_meta_closed = BG.getField @"wuffs_base__io_buffer_meta_closed" x0
                                     }
      , BG.getField @"wuffs_base__io_buffer_meta_ri" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__io_buffer_meta_ri" (BG.Ptr Wuffs_base__io_buffer_meta) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__io_buffer_meta_ri")

instance HasCField.HasCField Wuffs_base__io_buffer_meta "wuffs_base__io_buffer_meta_ri" where

  type CFieldType Wuffs_base__io_buffer_meta "wuffs_base__io_buffer_meta_ri" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @pos@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3105:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__io_buffer_meta_pos" Wuffs_base__io_buffer_meta ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__io_buffer_meta { wuffs_base__io_buffer_meta_pos = y1
                                     , wuffs_base__io_buffer_meta_wi = BG.getField @"wuffs_base__io_buffer_meta_wi" x0
                                     , wuffs_base__io_buffer_meta_ri = BG.getField @"wuffs_base__io_buffer_meta_ri" x0
                                     , wuffs_base__io_buffer_meta_closed = BG.getField @"wuffs_base__io_buffer_meta_closed" x0
                                     }
      , BG.getField @"wuffs_base__io_buffer_meta_pos" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__io_buffer_meta_pos" (BG.Ptr Wuffs_base__io_buffer_meta) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__io_buffer_meta_pos")

instance HasCField.HasCField Wuffs_base__io_buffer_meta "wuffs_base__io_buffer_meta_pos" where

  type CFieldType Wuffs_base__io_buffer_meta "wuffs_base__io_buffer_meta_pos" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @closed@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3106:8@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.CBool
         ) => BG.CompatHasField.HasField "wuffs_base__io_buffer_meta_closed" Wuffs_base__io_buffer_meta ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__io_buffer_meta { wuffs_base__io_buffer_meta_closed = y1
                                     , wuffs_base__io_buffer_meta_wi = BG.getField @"wuffs_base__io_buffer_meta_wi" x0
                                     , wuffs_base__io_buffer_meta_ri = BG.getField @"wuffs_base__io_buffer_meta_ri" x0
                                     , wuffs_base__io_buffer_meta_pos = BG.getField @"wuffs_base__io_buffer_meta_pos" x0
                                     }
      , BG.getField @"wuffs_base__io_buffer_meta_closed" x0
      )

instance ( ty ~ BG.CBool
         ) => BG.HasField "wuffs_base__io_buffer_meta_closed" (BG.Ptr Wuffs_base__io_buffer_meta) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__io_buffer_meta_closed")

instance HasCField.HasCField Wuffs_base__io_buffer_meta "wuffs_base__io_buffer_meta_closed" where

  type CFieldType Wuffs_base__io_buffer_meta "wuffs_base__io_buffer_meta_closed" =
    BG.CBool

  offset# = \_ -> \_ -> 24

{-| __C declaration:__ @struct wuffs_base__io_buffer__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3113:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__io_buffer = Wuffs_base__io_buffer
  { wuffs_base__io_buffer_data :: Wuffs_base__slice_u8
    {- ^ __C declaration:__ @data@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3114:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__io_buffer_meta :: Wuffs_base__io_buffer_meta
    {- ^ __C declaration:__ @meta@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3115:30@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__io_buffer where

  staticSizeOf = \_ -> (48 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__io_buffer where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__io_buffer
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__io_buffer_data") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__io_buffer_meta") ptr0

instance Marshal.WriteRaw Wuffs_base__io_buffer where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__io_buffer wuffs_base__io_buffer_data2 wuffs_base__io_buffer_meta3 ->
               HasCField.writeRaw (BG.Proxy @"wuffs_base__io_buffer_data") ptr0 wuffs_base__io_buffer_data2
            >> HasCField.writeRaw (BG.Proxy @"wuffs_base__io_buffer_meta") ptr0 wuffs_base__io_buffer_meta3

deriving via Marshal.EquivStorable Wuffs_base__io_buffer instance BG.Storable Wuffs_base__io_buffer

deriving via Struct.IsStructViaReadRaw Wuffs_base__io_buffer instance Struct.IsStruct Wuffs_base__io_buffer

{-| __C declaration:__ @data@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3114:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__slice_u8
         ) => BG.CompatHasField.HasField "wuffs_base__io_buffer_data" Wuffs_base__io_buffer ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__io_buffer { wuffs_base__io_buffer_data = y1
                                , wuffs_base__io_buffer_meta = BG.getField @"wuffs_base__io_buffer_meta" x0
                                }
      , BG.getField @"wuffs_base__io_buffer_data" x0
      )

instance ( ty ~ Wuffs_base__slice_u8
         ) => BG.HasField "wuffs_base__io_buffer_data" (BG.Ptr Wuffs_base__io_buffer) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__io_buffer_data")

instance HasCField.HasCField Wuffs_base__io_buffer "wuffs_base__io_buffer_data" where

  type CFieldType Wuffs_base__io_buffer "wuffs_base__io_buffer_data" =
    Wuffs_base__slice_u8

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @meta@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3115:30@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__io_buffer_meta
         ) => BG.CompatHasField.HasField "wuffs_base__io_buffer_meta" Wuffs_base__io_buffer ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__io_buffer { wuffs_base__io_buffer_meta = y1
                                , wuffs_base__io_buffer_data = BG.getField @"wuffs_base__io_buffer_data" x0
                                }
      , BG.getField @"wuffs_base__io_buffer_meta" x0
      )

instance ( ty ~ Wuffs_base__io_buffer_meta
         ) => BG.HasField "wuffs_base__io_buffer_meta" (BG.Ptr Wuffs_base__io_buffer) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__io_buffer_meta")

instance HasCField.HasCField Wuffs_base__io_buffer "wuffs_base__io_buffer_meta" where

  type CFieldType Wuffs_base__io_buffer "wuffs_base__io_buffer_meta" =
    Wuffs_base__io_buffer_meta

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @struct wuffs_base__token__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3405:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__token = Wuffs_base__token
  { wuffs_base__token_repr :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @repr@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3406:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__token where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__token where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__token
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__token_repr") ptr0

instance Marshal.WriteRaw Wuffs_base__token where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__token wuffs_base__token_repr2 ->
            HasCField.writeRaw (BG.Proxy @"wuffs_base__token_repr") ptr0 wuffs_base__token_repr2

deriving via Marshal.EquivStorable Wuffs_base__token instance BG.Storable Wuffs_base__token

deriving via Struct.IsStructViaReadRaw Wuffs_base__token instance Struct.IsStruct Wuffs_base__token

{-| __C declaration:__ @repr@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3406:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__token_repr" Wuffs_base__token ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__token {wuffs_base__token_repr = y1}
      , BG.getField @"wuffs_base__token_repr" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__token_repr" (BG.Ptr Wuffs_base__token) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__token_repr")

instance HasCField.HasCField Wuffs_base__token "wuffs_base__token_repr" where

  type CFieldType Wuffs_base__token "wuffs_base__token_repr" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__LENGTH__MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3435:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__LENGTH__MAX_INCL :: BG.CInt
wUFFS_BASE__TOKEN__LENGTH__MAX_INCL =
  (65535 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VALUE__SHIFT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3437:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VALUE__SHIFT :: BG.CInt
wUFFS_BASE__TOKEN__VALUE__SHIFT = (17 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VALUE_EXTENSION__SHIFT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3438:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VALUE_EXTENSION__SHIFT :: BG.CInt
wUFFS_BASE__TOKEN__VALUE_EXTENSION__SHIFT =
  (17 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VALUE_MAJOR__SHIFT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3439:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VALUE_MAJOR__SHIFT :: BG.CInt
wUFFS_BASE__TOKEN__VALUE_MAJOR__SHIFT =
  (42 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VALUE_MINOR__SHIFT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3440:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VALUE_MINOR__SHIFT :: BG.CInt
wUFFS_BASE__TOKEN__VALUE_MINOR__SHIFT =
  (17 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VALUE_BASE_CATEGORY__SHIFT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3441:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VALUE_BASE_CATEGORY__SHIFT :: BG.CInt
wUFFS_BASE__TOKEN__VALUE_BASE_CATEGORY__SHIFT =
  (38 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VALUE_BASE_DETAIL__SHIFT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3442:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VALUE_BASE_DETAIL__SHIFT :: BG.CInt
wUFFS_BASE__TOKEN__VALUE_BASE_DETAIL__SHIFT =
  (17 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__CONTINUED__SHIFT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3443:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__CONTINUED__SHIFT :: BG.CInt
wUFFS_BASE__TOKEN__CONTINUED__SHIFT = (16 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__LENGTH__SHIFT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3444:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__LENGTH__SHIFT :: BG.CInt
wUFFS_BASE__TOKEN__LENGTH__SHIFT = (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VALUE_EXTENSION__NUM_BITS@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3446:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VALUE_EXTENSION__NUM_BITS :: BG.CInt
wUFFS_BASE__TOKEN__VALUE_EXTENSION__NUM_BITS =
  (46 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBC__FILLER@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3450:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBC__FILLER :: BG.CInt
wUFFS_BASE__TOKEN__VBC__FILLER = (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBC__STRUCTURE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3451:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBC__STRUCTURE :: BG.CInt
wUFFS_BASE__TOKEN__VBC__STRUCTURE = (1 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBC__STRING@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3452:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBC__STRING :: BG.CInt
wUFFS_BASE__TOKEN__VBC__STRING = (2 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBC__UNICODE_CODE_POINT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3453:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBC__UNICODE_CODE_POINT :: BG.CInt
wUFFS_BASE__TOKEN__VBC__UNICODE_CODE_POINT =
  (3 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBC__LITERAL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3454:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBC__LITERAL :: BG.CInt
wUFFS_BASE__TOKEN__VBC__LITERAL = (4 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBC__NUMBER@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3455:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBC__NUMBER :: BG.CInt
wUFFS_BASE__TOKEN__VBC__NUMBER = (5 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBC__INLINE_INTEGER_SIGNED@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3456:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBC__INLINE_INTEGER_SIGNED :: BG.CInt
wUFFS_BASE__TOKEN__VBC__INLINE_INTEGER_SIGNED =
  (6 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBC__INLINE_INTEGER_UNSIGNED@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3457:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBC__INLINE_INTEGER_UNSIGNED :: BG.CInt
wUFFS_BASE__TOKEN__VBC__INLINE_INTEGER_UNSIGNED =
  (7 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__FILLER__PUNCTUATION@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3461:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__FILLER__PUNCTUATION :: BG.CInt
wUFFS_BASE__TOKEN__VBD__FILLER__PUNCTUATION =
  (1 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__FILLER__COMMENT_BLOCK@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3462:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__FILLER__COMMENT_BLOCK :: BG.CInt
wUFFS_BASE__TOKEN__VBD__FILLER__COMMENT_BLOCK =
  (2 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__FILLER__COMMENT_LINE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3463:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__FILLER__COMMENT_LINE :: BG.CInt
wUFFS_BASE__TOKEN__VBD__FILLER__COMMENT_LINE =
  (4 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__FILLER__COMMENT_ANY@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3466:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__FILLER__COMMENT_ANY :: BG.CInt
wUFFS_BASE__TOKEN__VBD__FILLER__COMMENT_ANY =
  (6 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRUCTURE__PUSH@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3470:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRUCTURE__PUSH :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRUCTURE__PUSH =
  (1 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRUCTURE__POP@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3471:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRUCTURE__POP :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRUCTURE__POP =
  (2 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRUCTURE__FROM_NONE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3472:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRUCTURE__FROM_NONE :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRUCTURE__FROM_NONE =
  (16 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRUCTURE__FROM_LIST@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3473:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRUCTURE__FROM_LIST :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRUCTURE__FROM_LIST =
  (32 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRUCTURE__FROM_DICT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3474:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRUCTURE__FROM_DICT :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRUCTURE__FROM_DICT =
  (64 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRUCTURE__TO_NONE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3475:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRUCTURE__TO_NONE :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRUCTURE__TO_NONE =
  (4096 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRUCTURE__TO_LIST@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3476:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRUCTURE__TO_LIST :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRUCTURE__TO_LIST =
  (8192 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRUCTURE__TO_DICT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3477:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRUCTURE__TO_DICT :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRUCTURE__TO_DICT =
  (16384 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__DEFINITELY_UTF_8@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3497:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__DEFINITELY_UTF_8 :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__DEFINITELY_UTF_8 =
  (1 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__CHAIN_MUST_BE_UTF_8@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3498:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__CHAIN_MUST_BE_UTF_8 :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__CHAIN_MUST_BE_UTF_8 =
  (2 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__CHAIN_SHOULD_BE_UTF_8@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3499:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__CHAIN_SHOULD_BE_UTF_8 :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__CHAIN_SHOULD_BE_UTF_8 =
  (4 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__DEFINITELY_ASCII@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3500:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__DEFINITELY_ASCII :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__DEFINITELY_ASCII =
  (16 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__CHAIN_MUST_BE_ASCII@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3501:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__CHAIN_MUST_BE_ASCII :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__CHAIN_MUST_BE_ASCII =
  (32 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__CHAIN_SHOULD_BE_ASCII@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3502:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__CHAIN_SHOULD_BE_ASCII :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__CHAIN_SHOULD_BE_ASCII =
  (64 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__CONVERT_0_DST_1_SRC_DROP@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3516:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_0_DST_1_SRC_DROP :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_0_DST_1_SRC_DROP =
  (256 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__CONVERT_1_DST_1_SRC_COPY@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3517:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_1_DST_1_SRC_COPY :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_1_DST_1_SRC_COPY =
  (512 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__CONVERT_1_DST_2_SRC_HEXADECIMAL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3518:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_1_DST_2_SRC_HEXADECIMAL :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_1_DST_2_SRC_HEXADECIMAL =
  (1024 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__CONVERT_1_DST_4_SRC_BACKSLASH_X@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3519:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_1_DST_4_SRC_BACKSLASH_X :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_1_DST_4_SRC_BACKSLASH_X =
  (2048 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__CONVERT_3_DST_4_SRC_BASE_64_STD@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3520:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_3_DST_4_SRC_BASE_64_STD :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_3_DST_4_SRC_BASE_64_STD =
  (4096 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__CONVERT_3_DST_4_SRC_BASE_64_URL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3521:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_3_DST_4_SRC_BASE_64_URL :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_3_DST_4_SRC_BASE_64_URL =
  (8192 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__CONVERT_4_DST_5_SRC_ASCII_85@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3522:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_4_DST_5_SRC_ASCII_85 :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_4_DST_5_SRC_ASCII_85 =
  (16384 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__CONVERT_5_DST_8_SRC_BASE_32_HEX@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3523:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_5_DST_8_SRC_BASE_32_HEX :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_5_DST_8_SRC_BASE_32_HEX =
  (32768 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__STRING__CONVERT_5_DST_8_SRC_BASE_32_STD@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3524:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_5_DST_8_SRC_BASE_32_STD :: BG.CInt
wUFFS_BASE__TOKEN__VBD__STRING__CONVERT_5_DST_8_SRC_BASE_32_STD =
  (65536 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__LITERAL__UNDEFINED@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3528:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__LITERAL__UNDEFINED :: BG.CInt
wUFFS_BASE__TOKEN__VBD__LITERAL__UNDEFINED =
  (1 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__LITERAL__NULL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3529:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__LITERAL__NULL :: BG.CInt
wUFFS_BASE__TOKEN__VBD__LITERAL__NULL =
  (2 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__LITERAL__FALSE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3530:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__LITERAL__FALSE :: BG.CInt
wUFFS_BASE__TOKEN__VBD__LITERAL__FALSE =
  (4 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__LITERAL__TRUE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3531:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__LITERAL__TRUE :: BG.CInt
wUFFS_BASE__TOKEN__VBD__LITERAL__TRUE =
  (8 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_FLOATING_POINT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3544:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_FLOATING_POINT :: BG.CInt
wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_FLOATING_POINT =
  (1 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_INTEGER_SIGNED@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3545:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_INTEGER_SIGNED :: BG.CInt
wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_INTEGER_SIGNED =
  (2 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_INTEGER_UNSIGNED@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3546:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_INTEGER_UNSIGNED :: BG.CInt
wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_INTEGER_UNSIGNED =
  (4 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_NEG_INF@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3548:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_NEG_INF :: BG.CInt
wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_NEG_INF =
  (16 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_POS_INF@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3549:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_POS_INF :: BG.CInt
wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_POS_INF =
  (32 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_NEG_NAN@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3550:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_NEG_NAN :: BG.CInt
wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_NEG_NAN =
  (64 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_POS_NAN@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3551:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_POS_NAN :: BG.CInt
wUFFS_BASE__TOKEN__VBD__NUMBER__CONTENT_POS_NAN =
  (128 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_BINARY_BIG_ENDIAN@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3557:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_BINARY_BIG_ENDIAN :: BG.CInt
wUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_BINARY_BIG_ENDIAN =
  (256 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_BINARY_LITTLE_ENDIAN@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3558:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_BINARY_LITTLE_ENDIAN :: BG.CInt
wUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_BINARY_LITTLE_ENDIAN =
  (512 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_TEXT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3559:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_TEXT :: BG.CInt
wUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_TEXT =
  (1024 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_IGNORE_FIRST_BYTE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3561:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_IGNORE_FIRST_BYTE :: BG.CInt
wUFFS_BASE__TOKEN__VBD__NUMBER__FORMAT_IGNORE_FIRST_BYTE =
  (4096 :: BG.CInt)

{-| __C declaration:__ @struct wuffs_base__slice_token@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3693:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__slice_token = Wuffs_base__slice_token
  { wuffs_base__slice_token_ptr :: BG.Ptr Wuffs_base__token
    {- ^ __C declaration:__ @ptr@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3693:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__slice_token_len :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @len@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3693:9@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__slice_token where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__slice_token where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__slice_token
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__slice_token_ptr") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__slice_token_len") ptr0

instance Marshal.WriteRaw Wuffs_base__slice_token where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__slice_token
            wuffs_base__slice_token_ptr2
            wuffs_base__slice_token_len3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__slice_token_ptr") ptr0 wuffs_base__slice_token_ptr2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__slice_token_len") ptr0 wuffs_base__slice_token_len3

deriving via Marshal.EquivStorable Wuffs_base__slice_token instance BG.Storable Wuffs_base__slice_token

deriving via Struct.IsStructViaReadRaw Wuffs_base__slice_token instance Struct.IsStruct Wuffs_base__slice_token

{-| __C declaration:__ @ptr@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3693:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.Ptr Wuffs_base__token
         ) => BG.CompatHasField.HasField "wuffs_base__slice_token_ptr" Wuffs_base__slice_token ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__slice_token { wuffs_base__slice_token_ptr = y1
                                  , wuffs_base__slice_token_len = BG.getField @"wuffs_base__slice_token_len" x0
                                  }
      , BG.getField @"wuffs_base__slice_token_ptr" x0
      )

instance ( ty ~ BG.Ptr Wuffs_base__token
         ) => BG.HasField "wuffs_base__slice_token_ptr" (BG.Ptr Wuffs_base__slice_token) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__slice_token_ptr")

instance HasCField.HasCField Wuffs_base__slice_token "wuffs_base__slice_token_ptr" where

  type CFieldType Wuffs_base__slice_token "wuffs_base__slice_token_ptr" =
    BG.Ptr Wuffs_base__token

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @len@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3693:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__slice_token_len" Wuffs_base__slice_token ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__slice_token { wuffs_base__slice_token_len = y1
                                  , wuffs_base__slice_token_ptr = BG.getField @"wuffs_base__slice_token_ptr" x0
                                  }
      , BG.getField @"wuffs_base__slice_token_len" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__slice_token_len" (BG.Ptr Wuffs_base__slice_token) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__slice_token_len")

instance HasCField.HasCField Wuffs_base__slice_token "wuffs_base__slice_token_len" where

  type CFieldType Wuffs_base__slice_token "wuffs_base__slice_token_len" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @struct wuffs_base__token_buffer_meta__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3715:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__token_buffer_meta = Wuffs_base__token_buffer_meta
  { wuffs_base__token_buffer_meta_wi :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @wi@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3716:10@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__token_buffer_meta_ri :: HsBindgen.Runtime.LibC.CSize
    {- ^ __C declaration:__ @ri@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3717:10@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__token_buffer_meta_pos :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @pos@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3718:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__token_buffer_meta_closed :: BG.CBool
    {- ^ __C declaration:__ @closed@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3719:8@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__token_buffer_meta where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__token_buffer_meta where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__token_buffer_meta
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__token_buffer_meta_wi") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__token_buffer_meta_ri") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__token_buffer_meta_pos") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__token_buffer_meta_closed") ptr0

instance Marshal.WriteRaw Wuffs_base__token_buffer_meta where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__token_buffer_meta
            wuffs_base__token_buffer_meta_wi2
            wuffs_base__token_buffer_meta_ri3
            wuffs_base__token_buffer_meta_pos4
            wuffs_base__token_buffer_meta_closed5 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__token_buffer_meta_wi") ptr0 wuffs_base__token_buffer_meta_wi2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__token_buffer_meta_ri") ptr0 wuffs_base__token_buffer_meta_ri3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__token_buffer_meta_pos") ptr0 wuffs_base__token_buffer_meta_pos4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__token_buffer_meta_closed") ptr0 wuffs_base__token_buffer_meta_closed5

deriving via Marshal.EquivStorable Wuffs_base__token_buffer_meta instance BG.Storable Wuffs_base__token_buffer_meta

deriving via Struct.IsStructViaReadRaw Wuffs_base__token_buffer_meta instance Struct.IsStruct Wuffs_base__token_buffer_meta

{-| __C declaration:__ @wi@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3716:10@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__token_buffer_meta_wi" Wuffs_base__token_buffer_meta ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__token_buffer_meta { wuffs_base__token_buffer_meta_wi = y1
                                        , wuffs_base__token_buffer_meta_ri = BG.getField @"wuffs_base__token_buffer_meta_ri" x0
                                        , wuffs_base__token_buffer_meta_pos = BG.getField @"wuffs_base__token_buffer_meta_pos" x0
                                        , wuffs_base__token_buffer_meta_closed = BG.getField @"wuffs_base__token_buffer_meta_closed" x0
                                        }
      , BG.getField @"wuffs_base__token_buffer_meta_wi" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__token_buffer_meta_wi" (BG.Ptr Wuffs_base__token_buffer_meta) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__token_buffer_meta_wi")

instance HasCField.HasCField Wuffs_base__token_buffer_meta "wuffs_base__token_buffer_meta_wi" where

  type CFieldType Wuffs_base__token_buffer_meta "wuffs_base__token_buffer_meta_wi" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @ri@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3717:10@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.CompatHasField.HasField "wuffs_base__token_buffer_meta_ri" Wuffs_base__token_buffer_meta ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__token_buffer_meta { wuffs_base__token_buffer_meta_ri = y1
                                        , wuffs_base__token_buffer_meta_wi = BG.getField @"wuffs_base__token_buffer_meta_wi" x0
                                        , wuffs_base__token_buffer_meta_pos = BG.getField @"wuffs_base__token_buffer_meta_pos" x0
                                        , wuffs_base__token_buffer_meta_closed = BG.getField @"wuffs_base__token_buffer_meta_closed" x0
                                        }
      , BG.getField @"wuffs_base__token_buffer_meta_ri" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.CSize
         ) => BG.HasField "wuffs_base__token_buffer_meta_ri" (BG.Ptr Wuffs_base__token_buffer_meta) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__token_buffer_meta_ri")

instance HasCField.HasCField Wuffs_base__token_buffer_meta "wuffs_base__token_buffer_meta_ri" where

  type CFieldType Wuffs_base__token_buffer_meta "wuffs_base__token_buffer_meta_ri" =
    HsBindgen.Runtime.LibC.CSize

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @pos@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3718:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__token_buffer_meta_pos" Wuffs_base__token_buffer_meta ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__token_buffer_meta { wuffs_base__token_buffer_meta_pos = y1
                                        , wuffs_base__token_buffer_meta_wi = BG.getField @"wuffs_base__token_buffer_meta_wi" x0
                                        , wuffs_base__token_buffer_meta_ri = BG.getField @"wuffs_base__token_buffer_meta_ri" x0
                                        , wuffs_base__token_buffer_meta_closed = BG.getField @"wuffs_base__token_buffer_meta_closed" x0
                                        }
      , BG.getField @"wuffs_base__token_buffer_meta_pos" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__token_buffer_meta_pos" (BG.Ptr Wuffs_base__token_buffer_meta) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__token_buffer_meta_pos")

instance HasCField.HasCField Wuffs_base__token_buffer_meta "wuffs_base__token_buffer_meta_pos" where

  type CFieldType Wuffs_base__token_buffer_meta "wuffs_base__token_buffer_meta_pos" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @closed@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3719:8@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.CBool
         ) => BG.CompatHasField.HasField "wuffs_base__token_buffer_meta_closed" Wuffs_base__token_buffer_meta ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__token_buffer_meta { wuffs_base__token_buffer_meta_closed = y1
                                        , wuffs_base__token_buffer_meta_wi = BG.getField @"wuffs_base__token_buffer_meta_wi" x0
                                        , wuffs_base__token_buffer_meta_ri = BG.getField @"wuffs_base__token_buffer_meta_ri" x0
                                        , wuffs_base__token_buffer_meta_pos = BG.getField @"wuffs_base__token_buffer_meta_pos" x0
                                        }
      , BG.getField @"wuffs_base__token_buffer_meta_closed" x0
      )

instance ( ty ~ BG.CBool
         ) => BG.HasField "wuffs_base__token_buffer_meta_closed" (BG.Ptr Wuffs_base__token_buffer_meta) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__token_buffer_meta_closed")

instance HasCField.HasCField Wuffs_base__token_buffer_meta "wuffs_base__token_buffer_meta_closed" where

  type CFieldType Wuffs_base__token_buffer_meta "wuffs_base__token_buffer_meta_closed" =
    BG.CBool

  offset# = \_ -> \_ -> 24

{-| __C declaration:__ @struct wuffs_base__token_buffer__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3726:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__token_buffer = Wuffs_base__token_buffer
  { wuffs_base__token_buffer_data :: Wuffs_base__slice_token
    {- ^ __C declaration:__ @data@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3727:27@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__token_buffer_meta :: Wuffs_base__token_buffer_meta
    {- ^ __C declaration:__ @meta@

         __defined at:__ @wuffs\/wuffs-v0.4.c 3728:33@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__token_buffer where

  staticSizeOf = \_ -> (48 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__token_buffer where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__token_buffer
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__token_buffer_data") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__token_buffer_meta") ptr0

instance Marshal.WriteRaw Wuffs_base__token_buffer where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__token_buffer
            wuffs_base__token_buffer_data2
            wuffs_base__token_buffer_meta3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__token_buffer_data") ptr0 wuffs_base__token_buffer_data2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__token_buffer_meta") ptr0 wuffs_base__token_buffer_meta3

deriving via Marshal.EquivStorable Wuffs_base__token_buffer instance BG.Storable Wuffs_base__token_buffer

deriving via Struct.IsStructViaReadRaw Wuffs_base__token_buffer instance Struct.IsStruct Wuffs_base__token_buffer

{-| __C declaration:__ @data@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3727:27@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__slice_token
         ) => BG.CompatHasField.HasField "wuffs_base__token_buffer_data" Wuffs_base__token_buffer ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__token_buffer { wuffs_base__token_buffer_data = y1
                                   , wuffs_base__token_buffer_meta = BG.getField @"wuffs_base__token_buffer_meta" x0
                                   }
      , BG.getField @"wuffs_base__token_buffer_data" x0
      )

instance ( ty ~ Wuffs_base__slice_token
         ) => BG.HasField "wuffs_base__token_buffer_data" (BG.Ptr Wuffs_base__token_buffer) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__token_buffer_data")

instance HasCField.HasCField Wuffs_base__token_buffer "wuffs_base__token_buffer_data" where

  type CFieldType Wuffs_base__token_buffer "wuffs_base__token_buffer_data" =
    Wuffs_base__slice_token

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @meta@

    __defined at:__ @wuffs\/wuffs-v0.4.c 3728:33@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__token_buffer_meta
         ) => BG.CompatHasField.HasField "wuffs_base__token_buffer_meta" Wuffs_base__token_buffer ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__token_buffer { wuffs_base__token_buffer_meta = y1
                                   , wuffs_base__token_buffer_data = BG.getField @"wuffs_base__token_buffer_data" x0
                                   }
      , BG.getField @"wuffs_base__token_buffer_meta" x0
      )

instance ( ty ~ Wuffs_base__token_buffer_meta
         ) => BG.HasField "wuffs_base__token_buffer_meta" (BG.Ptr Wuffs_base__token_buffer) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__token_buffer_meta")

instance HasCField.HasCField Wuffs_base__token_buffer "wuffs_base__token_buffer_meta" where

  type CFieldType Wuffs_base__token_buffer "wuffs_base__token_buffer_meta" =
    Wuffs_base__token_buffer_meta

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @macro WUFFS_BASE__IMAGE__DIMENSION_MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4052:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__IMAGE__DIMENSION_MAX_INCL :: BG.CInt
wUFFS_BASE__IMAGE__DIMENSION_MAX_INCL =
  (16777215 :: BG.CInt)

{-| __C declaration:__ @wuffs_base__color_u32_argb_premul@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4057:18@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
newtype Wuffs_base__color_u32_argb_premul = Wuffs_base__color_u32_argb_premul
  { unwrapWuffs_base__color_u32_argb_premul :: HsBindgen.Runtime.LibC.Word32
  }
  deriving stock (Eq, BG.Generic, Ord, Read, Show)
  deriving newtype
    ( BG.Bitfield
    , BG.Bits
    , Bounded
    , Enum
    , BG.FiniteBits
    , BG.HasFFIType
    , Integral
    , BG.Ix
    , Num
    , BG.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , BG.Storable
    , Marshal.WriteRaw
    )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "unwrapWuffs_base__color_u32_argb_premul" Wuffs_base__color_u32_argb_premul ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__color_u32_argb_premul {unwrapWuffs_base__color_u32_argb_premul = y1}
      , BG.getField @"unwrapWuffs_base__color_u32_argb_premul" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "unwrapWuffs_base__color_u32_argb_premul" (BG.Ptr Wuffs_base__color_u32_argb_premul) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"unwrapWuffs_base__color_u32_argb_premul")

instance HasCField.HasCField Wuffs_base__color_u32_argb_premul "unwrapWuffs_base__color_u32_argb_premul" where

  type CFieldType Wuffs_base__color_u32_argb_premul "unwrapWuffs_base__color_u32_argb_premul" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @wuffs_base__pixel_blend@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4379:17@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
newtype Wuffs_base__pixel_blend = Wuffs_base__pixel_blend
  { unwrapWuffs_base__pixel_blend :: HsBindgen.Runtime.LibC.Word8
  }
  deriving stock (Eq, BG.Generic, Ord, Read, Show)
  deriving newtype
    ( BG.Bitfield
    , BG.Bits
    , Bounded
    , Enum
    , BG.FiniteBits
    , BG.HasFFIType
    , Integral
    , BG.Ix
    , Num
    , BG.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , BG.Storable
    , Marshal.WriteRaw
    )

instance ( ty ~ HsBindgen.Runtime.LibC.Word8
         ) => BG.CompatHasField.HasField "unwrapWuffs_base__pixel_blend" Wuffs_base__pixel_blend ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_blend {unwrapWuffs_base__pixel_blend = y1}
      , BG.getField @"unwrapWuffs_base__pixel_blend" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word8
         ) => BG.HasField "unwrapWuffs_base__pixel_blend" (BG.Ptr Wuffs_base__pixel_blend) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"unwrapWuffs_base__pixel_blend")

instance HasCField.HasCField Wuffs_base__pixel_blend "unwrapWuffs_base__pixel_blend" where

  type CFieldType Wuffs_base__pixel_blend "unwrapWuffs_base__pixel_blend" =
    HsBindgen.Runtime.LibC.Word8

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @wuffs_base__pixel_alpha_transparency@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4394:18@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
newtype Wuffs_base__pixel_alpha_transparency = Wuffs_base__pixel_alpha_transparency
  { unwrapWuffs_base__pixel_alpha_transparency :: HsBindgen.Runtime.LibC.Word32
  }
  deriving stock (Eq, BG.Generic, Ord, Read, Show)
  deriving newtype
    ( BG.Bitfield
    , BG.Bits
    , Bounded
    , Enum
    , BG.FiniteBits
    , BG.HasFFIType
    , Integral
    , BG.Ix
    , Num
    , BG.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , BG.Storable
    , Marshal.WriteRaw
    )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "unwrapWuffs_base__pixel_alpha_transparency" Wuffs_base__pixel_alpha_transparency ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_alpha_transparency {unwrapWuffs_base__pixel_alpha_transparency = y1}
      , BG.getField @"unwrapWuffs_base__pixel_alpha_transparency" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "unwrapWuffs_base__pixel_alpha_transparency" (BG.Ptr Wuffs_base__pixel_alpha_transparency) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"unwrapWuffs_base__pixel_alpha_transparency")

instance HasCField.HasCField Wuffs_base__pixel_alpha_transparency "unwrapWuffs_base__pixel_alpha_transparency" where

  type CFieldType Wuffs_base__pixel_alpha_transparency "unwrapWuffs_base__pixel_alpha_transparency" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__OPAQUE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4396:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__OPAQUE :: BG.CInt
wUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__OPAQUE =
  (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__NONPREMULTIPLIED_ALPHA@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4397:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__NONPREMULTIPLIED_ALPHA :: BG.CInt
wUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__NONPREMULTIPLIED_ALPHA =
  (1 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__PREMULTIPLIED_ALPHA@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4398:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__PREMULTIPLIED_ALPHA :: BG.CInt
wUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__PREMULTIPLIED_ALPHA =
  (2 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__BINARY_ALPHA@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4399:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__BINARY_ALPHA :: BG.CInt
wUFFS_BASE__PIXEL_ALPHA_TRANSPARENCY__BINARY_ALPHA =
  (3 :: BG.CInt)

{-| __C declaration:__ @wuffs_base__pixel_coloration@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4409:18@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
newtype Wuffs_base__pixel_coloration = Wuffs_base__pixel_coloration
  { unwrapWuffs_base__pixel_coloration :: HsBindgen.Runtime.LibC.Word32
  }
  deriving stock (Eq, BG.Generic, Ord, Read, Show)
  deriving newtype
    ( BG.Bitfield
    , BG.Bits
    , Bounded
    , Enum
    , BG.FiniteBits
    , BG.HasFFIType
    , Integral
    , BG.Ix
    , Num
    , BG.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , BG.Storable
    , Marshal.WriteRaw
    )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "unwrapWuffs_base__pixel_coloration" Wuffs_base__pixel_coloration ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_coloration {unwrapWuffs_base__pixel_coloration = y1}
      , BG.getField @"unwrapWuffs_base__pixel_coloration" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "unwrapWuffs_base__pixel_coloration" (BG.Ptr Wuffs_base__pixel_coloration) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"unwrapWuffs_base__pixel_coloration")

instance HasCField.HasCField Wuffs_base__pixel_coloration "unwrapWuffs_base__pixel_coloration" where

  type CFieldType Wuffs_base__pixel_coloration "unwrapWuffs_base__pixel_coloration" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_COLORATION__NONE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4411:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_COLORATION__NONE :: BG.CInt
wUFFS_BASE__PIXEL_COLORATION__NONE = (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_COLORATION__GRAY@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4412:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_COLORATION__GRAY :: BG.CInt
wUFFS_BASE__PIXEL_COLORATION__GRAY = (1 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_COLORATION__RICH@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4413:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_COLORATION__RICH :: BG.CInt
wUFFS_BASE__PIXEL_COLORATION__RICH = (3 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__NUM_PLANES_MAX@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4418:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__NUM_PLANES_MAX :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__NUM_PLANES_MAX =
  (4 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__NUM_PLANES_MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4420:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__NUM_PLANES_MAX_INCL :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__NUM_PLANES_MAX_INCL =
  (4 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__INDEXED__INDEX_PLANE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4422:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__INDEXED__INDEX_PLANE :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__INDEXED__INDEX_PLANE =
  (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__INDEXED__COLOR_PLANE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4423:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__INDEXED__COLOR_PLANE :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__INDEXED__COLOR_PLANE =
  (3 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__INDEXED__PALETTE_BYTE_LENGTH@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4426:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__INDEXED__PALETTE_BYTE_LENGTH :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__INDEXED__PALETTE_BYTE_LENGTH =
  (1024 :: BG.CInt)

{-| __C declaration:__ @struct wuffs_base__pixel_format__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4435:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__pixel_format = Wuffs_base__pixel_format
  { wuffs_base__pixel_format_repr :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @repr@

         __defined at:__ @wuffs\/wuffs-v0.4.c 4436:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__pixel_format where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wuffs_base__pixel_format where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__pixel_format
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_format_repr") ptr0

instance Marshal.WriteRaw Wuffs_base__pixel_format where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__pixel_format wuffs_base__pixel_format_repr2 ->
            HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_format_repr") ptr0 wuffs_base__pixel_format_repr2

deriving via Marshal.EquivStorable Wuffs_base__pixel_format instance BG.Storable Wuffs_base__pixel_format

deriving via Struct.IsStructViaReadRaw Wuffs_base__pixel_format instance Struct.IsStruct Wuffs_base__pixel_format

{-| __C declaration:__ @repr@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4436:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_format_repr" Wuffs_base__pixel_format ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_format {wuffs_base__pixel_format_repr = y1}
      , BG.getField @"wuffs_base__pixel_format_repr" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__pixel_format_repr" (BG.Ptr Wuffs_base__pixel_format) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_format_repr")

instance HasCField.HasCField Wuffs_base__pixel_format "wuffs_base__pixel_format_repr" where

  type CFieldType Wuffs_base__pixel_format "wuffs_base__pixel_format_repr" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__INVALID@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4464:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__INVALID :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__INVALID = (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__A@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4466:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__A :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__A = (33554440 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__Y@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4468:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__Y :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__Y = (536870920 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__Y_16LE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4469:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__Y_16LE :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__Y_16LE =
  (536870923 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__Y_16BE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4470:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__Y_16BE :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__Y_16BE =
  (537919499 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__YA_NONPREMUL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4471:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__YA_NONPREMUL :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__YA_NONPREMUL =
  (553648264 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__YA_PREMUL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4472:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__YA_PREMUL :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__YA_PREMUL =
  (570425480 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__YCBCR@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4474:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__YCBCR :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__YCBCR =
  (1073875080 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__YCBCRA_NONPREMUL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4475:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__YCBCRA_NONPREMUL :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__YCBCRA_NONPREMUL =
  (1090750600 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__YCBCRK@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4476:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__YCBCRK :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__YCBCRK =
  (1342408840 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__YCOCG@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4478:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__YCOCG :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__YCOCG =
  (1610745992 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__YCOCGA_NONPREMUL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4479:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__YCOCGA_NONPREMUL :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__YCOCGA_NONPREMUL =
  (1627621512 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__YCOCGK@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4480:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__YCOCGK :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__YCOCGK =
  (1879279752 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__INDEXED__BGRA_NONPREMUL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4482:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__INDEXED__BGRA_NONPREMUL :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__INDEXED__BGRA_NONPREMUL =
  (2164523016 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__INDEXED__BGRA_PREMUL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4483:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__INDEXED__BGRA_PREMUL :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__INDEXED__BGRA_PREMUL =
  (2181300232 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__INDEXED__BGRA_BINARY@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4484:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__INDEXED__BGRA_BINARY :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__INDEXED__BGRA_BINARY =
  (2198077448 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__BGR_565@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4486:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__BGR_565 :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__BGR_565 =
  (2147485029 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__BGR@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4487:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__BGR :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__BGR =
  (2147485832 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__BGRA_NONPREMUL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4488:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__BGRA_NONPREMUL :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__BGRA_NONPREMUL =
  (2164295816 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__BGRA_NONPREMUL_4X16LE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4489:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__BGRA_NONPREMUL_4X16LE :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__BGRA_NONPREMUL_4X16LE =
  (2164308923 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__BGRA_PREMUL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4490:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__BGRA_PREMUL :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__BGRA_PREMUL =
  (2181073032 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__BGRA_PREMUL_4X16LE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4491:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__BGRA_PREMUL_4X16LE :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__BGRA_PREMUL_4X16LE =
  (2181086139 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__BGRA_BINARY@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4492:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__BGRA_BINARY :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__BGRA_BINARY =
  (2197850248 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__BGRX@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4493:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__BGRX :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__BGRX =
  (2415954056 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__RGB@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4495:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__RGB :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__RGB =
  (2684356744 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__RGBA_NONPREMUL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4496:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__RGBA_NONPREMUL :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__RGBA_NONPREMUL =
  (2701166728 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__RGBA_NONPREMUL_4X16LE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4497:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__RGBA_NONPREMUL_4X16LE :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__RGBA_NONPREMUL_4X16LE =
  (2701179835 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__RGBA_PREMUL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4498:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__RGBA_PREMUL :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__RGBA_PREMUL =
  (2717943944 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__RGBA_PREMUL_4X16LE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4499:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__RGBA_PREMUL_4X16LE :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__RGBA_PREMUL_4X16LE =
  (2717957051 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__RGBA_BINARY@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4500:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__RGBA_BINARY :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__RGBA_BINARY =
  (2734721160 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__RGBX@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4501:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__RGBX :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__RGBX =
  (2952824968 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__CMY@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4503:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__CMY :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__CMY =
  (3221358728 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_FORMAT__CMYK@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4504:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_FORMAT__CMYK :: BG.CInt
wUFFS_BASE__PIXEL_FORMAT__CMYK =
  (3489892488 :: BG.CInt)

{-| __C declaration:__ @struct wuffs_base__pixel_subsampling__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4626:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__pixel_subsampling = Wuffs_base__pixel_subsampling
  { wuffs_base__pixel_subsampling_repr :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @repr@

         __defined at:__ @wuffs\/wuffs-v0.4.c 4627:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__pixel_subsampling where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wuffs_base__pixel_subsampling where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__pixel_subsampling
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_subsampling_repr") ptr0

instance Marshal.WriteRaw Wuffs_base__pixel_subsampling where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__pixel_subsampling wuffs_base__pixel_subsampling_repr2 ->
            HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_subsampling_repr") ptr0 wuffs_base__pixel_subsampling_repr2

deriving via Marshal.EquivStorable Wuffs_base__pixel_subsampling instance BG.Storable Wuffs_base__pixel_subsampling

deriving via Struct.IsStructViaReadRaw Wuffs_base__pixel_subsampling instance Struct.IsStruct Wuffs_base__pixel_subsampling

{-| __C declaration:__ @repr@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4627:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_subsampling_repr" Wuffs_base__pixel_subsampling ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_subsampling {wuffs_base__pixel_subsampling_repr = y1}
      , BG.getField @"wuffs_base__pixel_subsampling_repr" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__pixel_subsampling_repr" (BG.Ptr Wuffs_base__pixel_subsampling) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_subsampling_repr")

instance HasCField.HasCField Wuffs_base__pixel_subsampling "wuffs_base__pixel_subsampling_repr" where

  type CFieldType Wuffs_base__pixel_subsampling "wuffs_base__pixel_subsampling_repr" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_SUBSAMPLING__NONE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4645:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_SUBSAMPLING__NONE :: BG.CInt
wUFFS_BASE__PIXEL_SUBSAMPLING__NONE = (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_SUBSAMPLING__444@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4647:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_SUBSAMPLING__444 :: BG.CInt
wUFFS_BASE__PIXEL_SUBSAMPLING__444 = (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_SUBSAMPLING__440@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4648:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_SUBSAMPLING__440 :: BG.CInt
wUFFS_BASE__PIXEL_SUBSAMPLING__440 =
  (65792 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_SUBSAMPLING__422@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4649:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_SUBSAMPLING__422 :: BG.CInt
wUFFS_BASE__PIXEL_SUBSAMPLING__422 =
  (1052672 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_SUBSAMPLING__420@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4650:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_SUBSAMPLING__420 :: BG.CInt
wUFFS_BASE__PIXEL_SUBSAMPLING__420 =
  (1118464 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_SUBSAMPLING__411@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4651:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_SUBSAMPLING__411 :: BG.CInt
wUFFS_BASE__PIXEL_SUBSAMPLING__411 =
  (3158016 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__PIXEL_SUBSAMPLING__410@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4652:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__PIXEL_SUBSAMPLING__410 :: BG.CInt
wUFFS_BASE__PIXEL_SUBSAMPLING__410 =
  (3223808 :: BG.CInt)

{-| __C declaration:__ @struct \@wuffs_base__pixel_config__struct_private_impl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4713:3@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__pixel_config__struct_private_impl = Wuffs_base__pixel_config__struct_private_impl
  { wuffs_base__pixel_config__struct_private_impl_pixfmt :: Wuffs_base__pixel_format
    {- ^ __C declaration:__ @pixfmt@

         __defined at:__ @wuffs\/wuffs-v0.4.c 4714:30@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__pixel_config__struct_private_impl_pixsub :: Wuffs_base__pixel_subsampling
    {- ^ __C declaration:__ @pixsub@

         __defined at:__ @wuffs\/wuffs-v0.4.c 4715:35@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__pixel_config__struct_private_impl_width :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @width@

         __defined at:__ @wuffs\/wuffs-v0.4.c 4716:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__pixel_config__struct_private_impl_height :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @height@

         __defined at:__ @wuffs\/wuffs-v0.4.c 4717:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__pixel_config__struct_private_impl where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wuffs_base__pixel_config__struct_private_impl where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__pixel_config__struct_private_impl
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_config__struct_private_impl_pixfmt") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_config__struct_private_impl_pixsub") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_config__struct_private_impl_width") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_config__struct_private_impl_height") ptr0

instance Marshal.WriteRaw Wuffs_base__pixel_config__struct_private_impl where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__pixel_config__struct_private_impl
            wuffs_base__pixel_config__struct_private_impl_pixfmt2
            wuffs_base__pixel_config__struct_private_impl_pixsub3
            wuffs_base__pixel_config__struct_private_impl_width4
            wuffs_base__pixel_config__struct_private_impl_height5 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_config__struct_private_impl_pixfmt") ptr0 wuffs_base__pixel_config__struct_private_impl_pixfmt2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_config__struct_private_impl_pixsub") ptr0 wuffs_base__pixel_config__struct_private_impl_pixsub3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_config__struct_private_impl_width") ptr0 wuffs_base__pixel_config__struct_private_impl_width4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_config__struct_private_impl_height") ptr0 wuffs_base__pixel_config__struct_private_impl_height5

deriving via Marshal.EquivStorable Wuffs_base__pixel_config__struct_private_impl instance BG.Storable Wuffs_base__pixel_config__struct_private_impl

deriving via Struct.IsStructViaReadRaw Wuffs_base__pixel_config__struct_private_impl instance Struct.IsStruct Wuffs_base__pixel_config__struct_private_impl

{-| __C declaration:__ @pixfmt@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4714:30@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__pixel_format
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_config__struct_private_impl_pixfmt" Wuffs_base__pixel_config__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_config__struct_private_impl { wuffs_base__pixel_config__struct_private_impl_pixfmt = y1
                                                        , wuffs_base__pixel_config__struct_private_impl_pixsub = BG.getField @"wuffs_base__pixel_config__struct_private_impl_pixsub" x0
                                                        , wuffs_base__pixel_config__struct_private_impl_width = BG.getField @"wuffs_base__pixel_config__struct_private_impl_width" x0
                                                        , wuffs_base__pixel_config__struct_private_impl_height = BG.getField @"wuffs_base__pixel_config__struct_private_impl_height" x0
                                                        }
      , BG.getField @"wuffs_base__pixel_config__struct_private_impl_pixfmt" x0
      )

instance ( ty ~ Wuffs_base__pixel_format
         ) => BG.HasField "wuffs_base__pixel_config__struct_private_impl_pixfmt" (BG.Ptr Wuffs_base__pixel_config__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_config__struct_private_impl_pixfmt")

instance HasCField.HasCField Wuffs_base__pixel_config__struct_private_impl "wuffs_base__pixel_config__struct_private_impl_pixfmt" where

  type CFieldType Wuffs_base__pixel_config__struct_private_impl "wuffs_base__pixel_config__struct_private_impl_pixfmt" =
    Wuffs_base__pixel_format

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @pixsub@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4715:35@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__pixel_subsampling
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_config__struct_private_impl_pixsub" Wuffs_base__pixel_config__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_config__struct_private_impl { wuffs_base__pixel_config__struct_private_impl_pixsub = y1
                                                        , wuffs_base__pixel_config__struct_private_impl_pixfmt = BG.getField @"wuffs_base__pixel_config__struct_private_impl_pixfmt" x0
                                                        , wuffs_base__pixel_config__struct_private_impl_width = BG.getField @"wuffs_base__pixel_config__struct_private_impl_width" x0
                                                        , wuffs_base__pixel_config__struct_private_impl_height = BG.getField @"wuffs_base__pixel_config__struct_private_impl_height" x0
                                                        }
      , BG.getField @"wuffs_base__pixel_config__struct_private_impl_pixsub" x0
      )

instance ( ty ~ Wuffs_base__pixel_subsampling
         ) => BG.HasField "wuffs_base__pixel_config__struct_private_impl_pixsub" (BG.Ptr Wuffs_base__pixel_config__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_config__struct_private_impl_pixsub")

instance HasCField.HasCField Wuffs_base__pixel_config__struct_private_impl "wuffs_base__pixel_config__struct_private_impl_pixsub" where

  type CFieldType Wuffs_base__pixel_config__struct_private_impl "wuffs_base__pixel_config__struct_private_impl_pixsub" =
    Wuffs_base__pixel_subsampling

  offset# = \_ -> \_ -> 4

{-| __C declaration:__ @width@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4716:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_config__struct_private_impl_width" Wuffs_base__pixel_config__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_config__struct_private_impl { wuffs_base__pixel_config__struct_private_impl_width = y1
                                                        , wuffs_base__pixel_config__struct_private_impl_pixfmt = BG.getField @"wuffs_base__pixel_config__struct_private_impl_pixfmt" x0
                                                        , wuffs_base__pixel_config__struct_private_impl_pixsub = BG.getField @"wuffs_base__pixel_config__struct_private_impl_pixsub" x0
                                                        , wuffs_base__pixel_config__struct_private_impl_height = BG.getField @"wuffs_base__pixel_config__struct_private_impl_height" x0
                                                        }
      , BG.getField @"wuffs_base__pixel_config__struct_private_impl_width" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__pixel_config__struct_private_impl_width" (BG.Ptr Wuffs_base__pixel_config__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_config__struct_private_impl_width")

instance HasCField.HasCField Wuffs_base__pixel_config__struct_private_impl "wuffs_base__pixel_config__struct_private_impl_width" where

  type CFieldType Wuffs_base__pixel_config__struct_private_impl "wuffs_base__pixel_config__struct_private_impl_width" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @height@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4717:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_config__struct_private_impl_height" Wuffs_base__pixel_config__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_config__struct_private_impl { wuffs_base__pixel_config__struct_private_impl_height = y1
                                                        , wuffs_base__pixel_config__struct_private_impl_pixfmt = BG.getField @"wuffs_base__pixel_config__struct_private_impl_pixfmt" x0
                                                        , wuffs_base__pixel_config__struct_private_impl_pixsub = BG.getField @"wuffs_base__pixel_config__struct_private_impl_pixsub" x0
                                                        , wuffs_base__pixel_config__struct_private_impl_width = BG.getField @"wuffs_base__pixel_config__struct_private_impl_width" x0
                                                        }
      , BG.getField @"wuffs_base__pixel_config__struct_private_impl_height" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__pixel_config__struct_private_impl_height" (BG.Ptr Wuffs_base__pixel_config__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_config__struct_private_impl_height")

instance HasCField.HasCField Wuffs_base__pixel_config__struct_private_impl "wuffs_base__pixel_config__struct_private_impl_height" where

  type CFieldType Wuffs_base__pixel_config__struct_private_impl "wuffs_base__pixel_config__struct_private_impl_height" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 12

{-| __C declaration:__ @struct wuffs_base__pixel_config__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4710:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__pixel_config = Wuffs_base__pixel_config
  { wuffs_base__pixel_config_private_impl :: Wuffs_base__pixel_config__struct_private_impl
    {- ^ __C declaration:__ @private_impl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 4718:5@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__pixel_config where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wuffs_base__pixel_config where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__pixel_config
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_config_private_impl") ptr0

instance Marshal.WriteRaw Wuffs_base__pixel_config where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__pixel_config wuffs_base__pixel_config_private_impl2 ->
            HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_config_private_impl") ptr0 wuffs_base__pixel_config_private_impl2

deriving via Marshal.EquivStorable Wuffs_base__pixel_config instance BG.Storable Wuffs_base__pixel_config

deriving via Struct.IsStructViaReadRaw Wuffs_base__pixel_config instance Struct.IsStruct Wuffs_base__pixel_config

{-| __C declaration:__ @private_impl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4718:5@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__pixel_config__struct_private_impl
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_config_private_impl" Wuffs_base__pixel_config ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_config {wuffs_base__pixel_config_private_impl = y1}
      , BG.getField @"wuffs_base__pixel_config_private_impl" x0
      )

instance ( ty ~ Wuffs_base__pixel_config__struct_private_impl
         ) => BG.HasField "wuffs_base__pixel_config_private_impl" (BG.Ptr Wuffs_base__pixel_config) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_config_private_impl")

instance HasCField.HasCField Wuffs_base__pixel_config "wuffs_base__pixel_config_private_impl" where

  type CFieldType Wuffs_base__pixel_config "wuffs_base__pixel_config_private_impl" =
    Wuffs_base__pixel_config__struct_private_impl

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct \@wuffs_base__image_config__struct_private_impl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4931:3@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__image_config__struct_private_impl = Wuffs_base__image_config__struct_private_impl
  { wuffs_base__image_config__struct_private_impl_first_frame_io_position :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @first_frame_io_position@

         __defined at:__ @wuffs\/wuffs-v0.4.c 4932:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__image_config__struct_private_impl_first_frame_is_opaque :: BG.CBool
    {- ^ __C declaration:__ @first_frame_is_opaque@

         __defined at:__ @wuffs\/wuffs-v0.4.c 4933:10@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__image_config__struct_private_impl where

  staticSizeOf = \_ -> (16 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__image_config__struct_private_impl where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__image_config__struct_private_impl
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_config__struct_private_impl_first_frame_io_position") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_config__struct_private_impl_first_frame_is_opaque") ptr0

instance Marshal.WriteRaw Wuffs_base__image_config__struct_private_impl where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__image_config__struct_private_impl
            wuffs_base__image_config__struct_private_impl_first_frame_io_position2
            wuffs_base__image_config__struct_private_impl_first_frame_is_opaque3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__image_config__struct_private_impl_first_frame_io_position") ptr0 wuffs_base__image_config__struct_private_impl_first_frame_io_position2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__image_config__struct_private_impl_first_frame_is_opaque") ptr0 wuffs_base__image_config__struct_private_impl_first_frame_is_opaque3

deriving via Marshal.EquivStorable Wuffs_base__image_config__struct_private_impl instance BG.Storable Wuffs_base__image_config__struct_private_impl

deriving via Struct.IsStructViaReadRaw Wuffs_base__image_config__struct_private_impl instance Struct.IsStruct Wuffs_base__image_config__struct_private_impl

{-| __C declaration:__ @first_frame_io_position@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4932:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__image_config__struct_private_impl_first_frame_io_position" Wuffs_base__image_config__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_config__struct_private_impl { wuffs_base__image_config__struct_private_impl_first_frame_io_position = y1
                                                        , wuffs_base__image_config__struct_private_impl_first_frame_is_opaque = BG.getField @"wuffs_base__image_config__struct_private_impl_first_frame_is_opaque" x0
                                                        }
      , BG.getField @"wuffs_base__image_config__struct_private_impl_first_frame_io_position" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__image_config__struct_private_impl_first_frame_io_position" (BG.Ptr Wuffs_base__image_config__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_config__struct_private_impl_first_frame_io_position")

instance HasCField.HasCField Wuffs_base__image_config__struct_private_impl "wuffs_base__image_config__struct_private_impl_first_frame_io_position" where

  type CFieldType Wuffs_base__image_config__struct_private_impl "wuffs_base__image_config__struct_private_impl_first_frame_io_position" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @first_frame_is_opaque@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4933:10@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.CBool
         ) => BG.CompatHasField.HasField "wuffs_base__image_config__struct_private_impl_first_frame_is_opaque" Wuffs_base__image_config__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_config__struct_private_impl { wuffs_base__image_config__struct_private_impl_first_frame_is_opaque = y1
                                                        , wuffs_base__image_config__struct_private_impl_first_frame_io_position = BG.getField @"wuffs_base__image_config__struct_private_impl_first_frame_io_position" x0
                                                        }
      , BG.getField @"wuffs_base__image_config__struct_private_impl_first_frame_is_opaque" x0
      )

instance ( ty ~ BG.CBool
         ) => BG.HasField "wuffs_base__image_config__struct_private_impl_first_frame_is_opaque" (BG.Ptr Wuffs_base__image_config__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_config__struct_private_impl_first_frame_is_opaque")

instance HasCField.HasCField Wuffs_base__image_config__struct_private_impl "wuffs_base__image_config__struct_private_impl_first_frame_is_opaque" where

  type CFieldType Wuffs_base__image_config__struct_private_impl "wuffs_base__image_config__struct_private_impl_first_frame_is_opaque" =
    BG.CBool

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @struct wuffs_base__image_config__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4926:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__image_config = Wuffs_base__image_config
  { wuffs_base__image_config_pixcfg :: Wuffs_base__pixel_config
    {- ^ __C declaration:__ @pixcfg@

         __defined at:__ @wuffs\/wuffs-v0.4.c 4927:28@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__image_config_private_impl :: Wuffs_base__image_config__struct_private_impl
    {- ^ __C declaration:__ @private_impl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 4934:5@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__image_config where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__image_config where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__image_config
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_config_pixcfg") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_config_private_impl") ptr0

instance Marshal.WriteRaw Wuffs_base__image_config where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__image_config
            wuffs_base__image_config_pixcfg2
            wuffs_base__image_config_private_impl3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__image_config_pixcfg") ptr0 wuffs_base__image_config_pixcfg2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__image_config_private_impl") ptr0 wuffs_base__image_config_private_impl3

deriving via Marshal.EquivStorable Wuffs_base__image_config instance BG.Storable Wuffs_base__image_config

deriving via Struct.IsStructViaReadRaw Wuffs_base__image_config instance Struct.IsStruct Wuffs_base__image_config

{-| __C declaration:__ @pixcfg@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4927:28@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__pixel_config
         ) => BG.CompatHasField.HasField "wuffs_base__image_config_pixcfg" Wuffs_base__image_config ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_config { wuffs_base__image_config_pixcfg = y1
                                   , wuffs_base__image_config_private_impl = BG.getField @"wuffs_base__image_config_private_impl" x0
                                   }
      , BG.getField @"wuffs_base__image_config_pixcfg" x0
      )

instance ( ty ~ Wuffs_base__pixel_config
         ) => BG.HasField "wuffs_base__image_config_pixcfg" (BG.Ptr Wuffs_base__image_config) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_config_pixcfg")

instance HasCField.HasCField Wuffs_base__image_config "wuffs_base__image_config_pixcfg" where

  type CFieldType Wuffs_base__image_config "wuffs_base__image_config_pixcfg" =
    Wuffs_base__pixel_config

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @private_impl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4934:5@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__image_config__struct_private_impl
         ) => BG.CompatHasField.HasField "wuffs_base__image_config_private_impl" Wuffs_base__image_config ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_config { wuffs_base__image_config_private_impl = y1
                                   , wuffs_base__image_config_pixcfg = BG.getField @"wuffs_base__image_config_pixcfg" x0
                                   }
      , BG.getField @"wuffs_base__image_config_private_impl" x0
      )

instance ( ty ~ Wuffs_base__image_config__struct_private_impl
         ) => BG.HasField "wuffs_base__image_config_private_impl" (BG.Ptr Wuffs_base__image_config) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_config_private_impl")

instance HasCField.HasCField Wuffs_base__image_config "wuffs_base__image_config_private_impl" where

  type CFieldType Wuffs_base__image_config "wuffs_base__image_config_private_impl" =
    Wuffs_base__image_config__struct_private_impl

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @wuffs_base__animation_disposal@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5064:17@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
newtype Wuffs_base__animation_disposal = Wuffs_base__animation_disposal
  { unwrapWuffs_base__animation_disposal :: HsBindgen.Runtime.LibC.Word8
  }
  deriving stock (Eq, BG.Generic, Ord, Read, Show)
  deriving newtype
    ( BG.Bitfield
    , BG.Bits
    , Bounded
    , Enum
    , BG.FiniteBits
    , BG.HasFFIType
    , Integral
    , BG.Ix
    , Num
    , BG.Prim
    , Marshal.ReadRaw
    , Real
    , Marshal.StaticSize
    , BG.Storable
    , Marshal.WriteRaw
    )

instance ( ty ~ HsBindgen.Runtime.LibC.Word8
         ) => BG.CompatHasField.HasField "unwrapWuffs_base__animation_disposal" Wuffs_base__animation_disposal ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__animation_disposal {unwrapWuffs_base__animation_disposal = y1}
      , BG.getField @"unwrapWuffs_base__animation_disposal" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word8
         ) => BG.HasField "unwrapWuffs_base__animation_disposal" (BG.Ptr Wuffs_base__animation_disposal) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"unwrapWuffs_base__animation_disposal")

instance HasCField.HasCField Wuffs_base__animation_disposal "unwrapWuffs_base__animation_disposal" where

  type CFieldType Wuffs_base__animation_disposal "unwrapWuffs_base__animation_disposal" =
    HsBindgen.Runtime.LibC.Word8

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct \@wuffs_base__frame_config__struct_private_impl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5077:3@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__frame_config__struct_private_impl = Wuffs_base__frame_config__struct_private_impl
  { wuffs_base__frame_config__struct_private_impl_bounds :: Wuffs_base__rect_ie_u32
    {- ^ __C declaration:__ @bounds@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5078:29@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__frame_config__struct_private_impl_duration :: Wuffs_base__flicks
    {- ^ __C declaration:__ @duration@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5079:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__frame_config__struct_private_impl_index :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @index@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5080:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__frame_config__struct_private_impl_io_position :: HsBindgen.Runtime.LibC.Word64
    {- ^ __C declaration:__ @io_position@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5081:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__frame_config__struct_private_impl_disposal :: Wuffs_base__animation_disposal
    {- ^ __C declaration:__ @disposal@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5082:36@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__frame_config__struct_private_impl_opaque_within_bounds :: BG.CBool
    {- ^ __C declaration:__ @opaque_within_bounds@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5083:10@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend :: BG.CBool
    {- ^ __C declaration:__ @overwrite_instead_of_blend@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5084:10@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__frame_config__struct_private_impl_background_color :: Wuffs_base__color_u32_argb_premul
    {- ^ __C declaration:__ @background_color@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5085:39@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__frame_config__struct_private_impl where

  staticSizeOf = \_ -> (48 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__frame_config__struct_private_impl where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__frame_config__struct_private_impl
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_bounds") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_duration") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_index") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_io_position") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_disposal") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_opaque_within_bounds") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_background_color") ptr0

instance Marshal.WriteRaw Wuffs_base__frame_config__struct_private_impl where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__frame_config__struct_private_impl
            wuffs_base__frame_config__struct_private_impl_bounds2
            wuffs_base__frame_config__struct_private_impl_duration3
            wuffs_base__frame_config__struct_private_impl_index4
            wuffs_base__frame_config__struct_private_impl_io_position5
            wuffs_base__frame_config__struct_private_impl_disposal6
            wuffs_base__frame_config__struct_private_impl_opaque_within_bounds7
            wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend8
            wuffs_base__frame_config__struct_private_impl_background_color9 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_bounds") ptr0 wuffs_base__frame_config__struct_private_impl_bounds2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_duration") ptr0 wuffs_base__frame_config__struct_private_impl_duration3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_index") ptr0 wuffs_base__frame_config__struct_private_impl_index4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_io_position") ptr0 wuffs_base__frame_config__struct_private_impl_io_position5
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_disposal") ptr0 wuffs_base__frame_config__struct_private_impl_disposal6
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_opaque_within_bounds") ptr0 wuffs_base__frame_config__struct_private_impl_opaque_within_bounds7
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend") ptr0 wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend8
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_background_color") ptr0 wuffs_base__frame_config__struct_private_impl_background_color9

deriving via Marshal.EquivStorable Wuffs_base__frame_config__struct_private_impl instance BG.Storable Wuffs_base__frame_config__struct_private_impl

deriving via Struct.IsStructViaReadRaw Wuffs_base__frame_config__struct_private_impl instance Struct.IsStruct Wuffs_base__frame_config__struct_private_impl

{-| __C declaration:__ @bounds@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5078:29@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__rect_ie_u32
         ) => BG.CompatHasField.HasField "wuffs_base__frame_config__struct_private_impl_bounds" Wuffs_base__frame_config__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__frame_config__struct_private_impl { wuffs_base__frame_config__struct_private_impl_bounds = y1
                                                        , wuffs_base__frame_config__struct_private_impl_duration = BG.getField @"wuffs_base__frame_config__struct_private_impl_duration" x0
                                                        , wuffs_base__frame_config__struct_private_impl_index = BG.getField @"wuffs_base__frame_config__struct_private_impl_index" x0
                                                        , wuffs_base__frame_config__struct_private_impl_io_position = BG.getField @"wuffs_base__frame_config__struct_private_impl_io_position" x0
                                                        , wuffs_base__frame_config__struct_private_impl_disposal = BG.getField @"wuffs_base__frame_config__struct_private_impl_disposal" x0
                                                        , wuffs_base__frame_config__struct_private_impl_opaque_within_bounds = BG.getField @"wuffs_base__frame_config__struct_private_impl_opaque_within_bounds" x0
                                                        , wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend = BG.getField @"wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend" x0
                                                        , wuffs_base__frame_config__struct_private_impl_background_color = BG.getField @"wuffs_base__frame_config__struct_private_impl_background_color" x0
                                                        }
      , BG.getField @"wuffs_base__frame_config__struct_private_impl_bounds" x0
      )

instance ( ty ~ Wuffs_base__rect_ie_u32
         ) => BG.HasField "wuffs_base__frame_config__struct_private_impl_bounds" (BG.Ptr Wuffs_base__frame_config__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_bounds")

instance HasCField.HasCField Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_bounds" where

  type CFieldType Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_bounds" =
    Wuffs_base__rect_ie_u32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @duration@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5079:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__flicks
         ) => BG.CompatHasField.HasField "wuffs_base__frame_config__struct_private_impl_duration" Wuffs_base__frame_config__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__frame_config__struct_private_impl { wuffs_base__frame_config__struct_private_impl_duration = y1
                                                        , wuffs_base__frame_config__struct_private_impl_bounds = BG.getField @"wuffs_base__frame_config__struct_private_impl_bounds" x0
                                                        , wuffs_base__frame_config__struct_private_impl_index = BG.getField @"wuffs_base__frame_config__struct_private_impl_index" x0
                                                        , wuffs_base__frame_config__struct_private_impl_io_position = BG.getField @"wuffs_base__frame_config__struct_private_impl_io_position" x0
                                                        , wuffs_base__frame_config__struct_private_impl_disposal = BG.getField @"wuffs_base__frame_config__struct_private_impl_disposal" x0
                                                        , wuffs_base__frame_config__struct_private_impl_opaque_within_bounds = BG.getField @"wuffs_base__frame_config__struct_private_impl_opaque_within_bounds" x0
                                                        , wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend = BG.getField @"wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend" x0
                                                        , wuffs_base__frame_config__struct_private_impl_background_color = BG.getField @"wuffs_base__frame_config__struct_private_impl_background_color" x0
                                                        }
      , BG.getField @"wuffs_base__frame_config__struct_private_impl_duration" x0
      )

instance ( ty ~ Wuffs_base__flicks
         ) => BG.HasField "wuffs_base__frame_config__struct_private_impl_duration" (BG.Ptr Wuffs_base__frame_config__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_duration")

instance HasCField.HasCField Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_duration" where

  type CFieldType Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_duration" =
    Wuffs_base__flicks

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @index@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5080:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__frame_config__struct_private_impl_index" Wuffs_base__frame_config__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__frame_config__struct_private_impl { wuffs_base__frame_config__struct_private_impl_index = y1
                                                        , wuffs_base__frame_config__struct_private_impl_bounds = BG.getField @"wuffs_base__frame_config__struct_private_impl_bounds" x0
                                                        , wuffs_base__frame_config__struct_private_impl_duration = BG.getField @"wuffs_base__frame_config__struct_private_impl_duration" x0
                                                        , wuffs_base__frame_config__struct_private_impl_io_position = BG.getField @"wuffs_base__frame_config__struct_private_impl_io_position" x0
                                                        , wuffs_base__frame_config__struct_private_impl_disposal = BG.getField @"wuffs_base__frame_config__struct_private_impl_disposal" x0
                                                        , wuffs_base__frame_config__struct_private_impl_opaque_within_bounds = BG.getField @"wuffs_base__frame_config__struct_private_impl_opaque_within_bounds" x0
                                                        , wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend = BG.getField @"wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend" x0
                                                        , wuffs_base__frame_config__struct_private_impl_background_color = BG.getField @"wuffs_base__frame_config__struct_private_impl_background_color" x0
                                                        }
      , BG.getField @"wuffs_base__frame_config__struct_private_impl_index" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__frame_config__struct_private_impl_index" (BG.Ptr Wuffs_base__frame_config__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_index")

instance HasCField.HasCField Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_index" where

  type CFieldType Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_index" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 24

{-| __C declaration:__ @io_position@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5081:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.CompatHasField.HasField "wuffs_base__frame_config__struct_private_impl_io_position" Wuffs_base__frame_config__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__frame_config__struct_private_impl { wuffs_base__frame_config__struct_private_impl_io_position = y1
                                                        , wuffs_base__frame_config__struct_private_impl_bounds = BG.getField @"wuffs_base__frame_config__struct_private_impl_bounds" x0
                                                        , wuffs_base__frame_config__struct_private_impl_duration = BG.getField @"wuffs_base__frame_config__struct_private_impl_duration" x0
                                                        , wuffs_base__frame_config__struct_private_impl_index = BG.getField @"wuffs_base__frame_config__struct_private_impl_index" x0
                                                        , wuffs_base__frame_config__struct_private_impl_disposal = BG.getField @"wuffs_base__frame_config__struct_private_impl_disposal" x0
                                                        , wuffs_base__frame_config__struct_private_impl_opaque_within_bounds = BG.getField @"wuffs_base__frame_config__struct_private_impl_opaque_within_bounds" x0
                                                        , wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend = BG.getField @"wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend" x0
                                                        , wuffs_base__frame_config__struct_private_impl_background_color = BG.getField @"wuffs_base__frame_config__struct_private_impl_background_color" x0
                                                        }
      , BG.getField @"wuffs_base__frame_config__struct_private_impl_io_position" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word64
         ) => BG.HasField "wuffs_base__frame_config__struct_private_impl_io_position" (BG.Ptr Wuffs_base__frame_config__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_io_position")

instance HasCField.HasCField Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_io_position" where

  type CFieldType Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_io_position" =
    HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 32

{-| __C declaration:__ @disposal@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5082:36@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__animation_disposal
         ) => BG.CompatHasField.HasField "wuffs_base__frame_config__struct_private_impl_disposal" Wuffs_base__frame_config__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__frame_config__struct_private_impl { wuffs_base__frame_config__struct_private_impl_disposal = y1
                                                        , wuffs_base__frame_config__struct_private_impl_bounds = BG.getField @"wuffs_base__frame_config__struct_private_impl_bounds" x0
                                                        , wuffs_base__frame_config__struct_private_impl_duration = BG.getField @"wuffs_base__frame_config__struct_private_impl_duration" x0
                                                        , wuffs_base__frame_config__struct_private_impl_index = BG.getField @"wuffs_base__frame_config__struct_private_impl_index" x0
                                                        , wuffs_base__frame_config__struct_private_impl_io_position = BG.getField @"wuffs_base__frame_config__struct_private_impl_io_position" x0
                                                        , wuffs_base__frame_config__struct_private_impl_opaque_within_bounds = BG.getField @"wuffs_base__frame_config__struct_private_impl_opaque_within_bounds" x0
                                                        , wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend = BG.getField @"wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend" x0
                                                        , wuffs_base__frame_config__struct_private_impl_background_color = BG.getField @"wuffs_base__frame_config__struct_private_impl_background_color" x0
                                                        }
      , BG.getField @"wuffs_base__frame_config__struct_private_impl_disposal" x0
      )

instance ( ty ~ Wuffs_base__animation_disposal
         ) => BG.HasField "wuffs_base__frame_config__struct_private_impl_disposal" (BG.Ptr Wuffs_base__frame_config__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_disposal")

instance HasCField.HasCField Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_disposal" where

  type CFieldType Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_disposal" =
    Wuffs_base__animation_disposal

  offset# = \_ -> \_ -> 40

{-| __C declaration:__ @opaque_within_bounds@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5083:10@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.CBool
         ) => BG.CompatHasField.HasField "wuffs_base__frame_config__struct_private_impl_opaque_within_bounds" Wuffs_base__frame_config__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__frame_config__struct_private_impl { wuffs_base__frame_config__struct_private_impl_opaque_within_bounds = y1
                                                        , wuffs_base__frame_config__struct_private_impl_bounds = BG.getField @"wuffs_base__frame_config__struct_private_impl_bounds" x0
                                                        , wuffs_base__frame_config__struct_private_impl_duration = BG.getField @"wuffs_base__frame_config__struct_private_impl_duration" x0
                                                        , wuffs_base__frame_config__struct_private_impl_index = BG.getField @"wuffs_base__frame_config__struct_private_impl_index" x0
                                                        , wuffs_base__frame_config__struct_private_impl_io_position = BG.getField @"wuffs_base__frame_config__struct_private_impl_io_position" x0
                                                        , wuffs_base__frame_config__struct_private_impl_disposal = BG.getField @"wuffs_base__frame_config__struct_private_impl_disposal" x0
                                                        , wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend = BG.getField @"wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend" x0
                                                        , wuffs_base__frame_config__struct_private_impl_background_color = BG.getField @"wuffs_base__frame_config__struct_private_impl_background_color" x0
                                                        }
      , BG.getField @"wuffs_base__frame_config__struct_private_impl_opaque_within_bounds" x0
      )

instance ( ty ~ BG.CBool
         ) => BG.HasField "wuffs_base__frame_config__struct_private_impl_opaque_within_bounds" (BG.Ptr Wuffs_base__frame_config__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_opaque_within_bounds")

instance HasCField.HasCField Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_opaque_within_bounds" where

  type CFieldType Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_opaque_within_bounds" =
    BG.CBool

  offset# = \_ -> \_ -> 41

{-| __C declaration:__ @overwrite_instead_of_blend@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5084:10@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.CBool
         ) => BG.CompatHasField.HasField "wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend" Wuffs_base__frame_config__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__frame_config__struct_private_impl { wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend = y1
                                                        , wuffs_base__frame_config__struct_private_impl_bounds = BG.getField @"wuffs_base__frame_config__struct_private_impl_bounds" x0
                                                        , wuffs_base__frame_config__struct_private_impl_duration = BG.getField @"wuffs_base__frame_config__struct_private_impl_duration" x0
                                                        , wuffs_base__frame_config__struct_private_impl_index = BG.getField @"wuffs_base__frame_config__struct_private_impl_index" x0
                                                        , wuffs_base__frame_config__struct_private_impl_io_position = BG.getField @"wuffs_base__frame_config__struct_private_impl_io_position" x0
                                                        , wuffs_base__frame_config__struct_private_impl_disposal = BG.getField @"wuffs_base__frame_config__struct_private_impl_disposal" x0
                                                        , wuffs_base__frame_config__struct_private_impl_opaque_within_bounds = BG.getField @"wuffs_base__frame_config__struct_private_impl_opaque_within_bounds" x0
                                                        , wuffs_base__frame_config__struct_private_impl_background_color = BG.getField @"wuffs_base__frame_config__struct_private_impl_background_color" x0
                                                        }
      , BG.getField @"wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend" x0
      )

instance ( ty ~ BG.CBool
         ) => BG.HasField "wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend" (BG.Ptr Wuffs_base__frame_config__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend")

instance HasCField.HasCField Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend" where

  type CFieldType Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend" =
    BG.CBool

  offset# = \_ -> \_ -> 42

{-| __C declaration:__ @background_color@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5085:39@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__color_u32_argb_premul
         ) => BG.CompatHasField.HasField "wuffs_base__frame_config__struct_private_impl_background_color" Wuffs_base__frame_config__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__frame_config__struct_private_impl { wuffs_base__frame_config__struct_private_impl_background_color = y1
                                                        , wuffs_base__frame_config__struct_private_impl_bounds = BG.getField @"wuffs_base__frame_config__struct_private_impl_bounds" x0
                                                        , wuffs_base__frame_config__struct_private_impl_duration = BG.getField @"wuffs_base__frame_config__struct_private_impl_duration" x0
                                                        , wuffs_base__frame_config__struct_private_impl_index = BG.getField @"wuffs_base__frame_config__struct_private_impl_index" x0
                                                        , wuffs_base__frame_config__struct_private_impl_io_position = BG.getField @"wuffs_base__frame_config__struct_private_impl_io_position" x0
                                                        , wuffs_base__frame_config__struct_private_impl_disposal = BG.getField @"wuffs_base__frame_config__struct_private_impl_disposal" x0
                                                        , wuffs_base__frame_config__struct_private_impl_opaque_within_bounds = BG.getField @"wuffs_base__frame_config__struct_private_impl_opaque_within_bounds" x0
                                                        , wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend = BG.getField @"wuffs_base__frame_config__struct_private_impl_overwrite_instead_of_blend" x0
                                                        }
      , BG.getField @"wuffs_base__frame_config__struct_private_impl_background_color" x0
      )

instance ( ty ~ Wuffs_base__color_u32_argb_premul
         ) => BG.HasField "wuffs_base__frame_config__struct_private_impl_background_color" (BG.Ptr Wuffs_base__frame_config__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__frame_config__struct_private_impl_background_color")

instance HasCField.HasCField Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_background_color" where

  type CFieldType Wuffs_base__frame_config__struct_private_impl "wuffs_base__frame_config__struct_private_impl_background_color" =
    Wuffs_base__color_u32_argb_premul

  offset# = \_ -> \_ -> 44

{-| __C declaration:__ @struct wuffs_base__frame_config__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5074:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__frame_config = Wuffs_base__frame_config
  { wuffs_base__frame_config_private_impl :: Wuffs_base__frame_config__struct_private_impl
    {- ^ __C declaration:__ @private_impl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5086:5@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__frame_config where

  staticSizeOf = \_ -> (48 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__frame_config where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__frame_config
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__frame_config_private_impl") ptr0

instance Marshal.WriteRaw Wuffs_base__frame_config where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__frame_config wuffs_base__frame_config_private_impl2 ->
            HasCField.writeRaw (BG.Proxy @"wuffs_base__frame_config_private_impl") ptr0 wuffs_base__frame_config_private_impl2

deriving via Marshal.EquivStorable Wuffs_base__frame_config instance BG.Storable Wuffs_base__frame_config

deriving via Struct.IsStructViaReadRaw Wuffs_base__frame_config instance Struct.IsStruct Wuffs_base__frame_config

{-| __C declaration:__ @private_impl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5086:5@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__frame_config__struct_private_impl
         ) => BG.CompatHasField.HasField "wuffs_base__frame_config_private_impl" Wuffs_base__frame_config ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__frame_config {wuffs_base__frame_config_private_impl = y1}
      , BG.getField @"wuffs_base__frame_config_private_impl" x0
      )

instance ( ty ~ Wuffs_base__frame_config__struct_private_impl
         ) => BG.HasField "wuffs_base__frame_config_private_impl" (BG.Ptr Wuffs_base__frame_config) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__frame_config_private_impl")

instance HasCField.HasCField Wuffs_base__frame_config "wuffs_base__frame_config_private_impl" where

  type CFieldType Wuffs_base__frame_config "wuffs_base__frame_config_private_impl" =
    Wuffs_base__frame_config__struct_private_impl

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct \@wuffs_base__pixel_buffer__struct_private_impl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5313:3@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__pixel_buffer__struct_private_impl = Wuffs_base__pixel_buffer__struct_private_impl
  { wuffs_base__pixel_buffer__struct_private_impl_planes :: CA.ConstantArray 4 Wuffs_base__table_u8
    {- ^ __C declaration:__ @planes@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5314:26@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__pixel_buffer__struct_private_impl where

  staticSizeOf = \_ -> (128 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__pixel_buffer__struct_private_impl where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__pixel_buffer__struct_private_impl
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_buffer__struct_private_impl_planes") ptr0

instance Marshal.WriteRaw Wuffs_base__pixel_buffer__struct_private_impl where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__pixel_buffer__struct_private_impl
            wuffs_base__pixel_buffer__struct_private_impl_planes2 ->
              HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_buffer__struct_private_impl_planes") ptr0 wuffs_base__pixel_buffer__struct_private_impl_planes2

deriving via Marshal.EquivStorable Wuffs_base__pixel_buffer__struct_private_impl instance BG.Storable Wuffs_base__pixel_buffer__struct_private_impl

deriving via Struct.IsStructViaReadRaw Wuffs_base__pixel_buffer__struct_private_impl instance Struct.IsStruct Wuffs_base__pixel_buffer__struct_private_impl

{-| __C declaration:__ @planes@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5314:26@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ CA.ConstantArray 4 Wuffs_base__table_u8
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_buffer__struct_private_impl_planes" Wuffs_base__pixel_buffer__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_buffer__struct_private_impl {wuffs_base__pixel_buffer__struct_private_impl_planes = y1}
      , BG.getField @"wuffs_base__pixel_buffer__struct_private_impl_planes" x0
      )

instance ( ty ~ CA.ConstantArray 4 Wuffs_base__table_u8
         ) => BG.HasField "wuffs_base__pixel_buffer__struct_private_impl_planes" (BG.Ptr Wuffs_base__pixel_buffer__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_buffer__struct_private_impl_planes")

instance HasCField.HasCField Wuffs_base__pixel_buffer__struct_private_impl "wuffs_base__pixel_buffer__struct_private_impl_planes" where

  type CFieldType Wuffs_base__pixel_buffer__struct_private_impl "wuffs_base__pixel_buffer__struct_private_impl_planes" =
    CA.ConstantArray 4 Wuffs_base__table_u8

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct wuffs_base__pixel_buffer__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5308:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__pixel_buffer = Wuffs_base__pixel_buffer
  { wuffs_base__pixel_buffer_pixcfg :: Wuffs_base__pixel_config
    {- ^ __C declaration:__ @pixcfg@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5309:28@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__pixel_buffer_private_impl :: Wuffs_base__pixel_buffer__struct_private_impl
    {- ^ __C declaration:__ @private_impl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5316:5@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__pixel_buffer where

  staticSizeOf = \_ -> (144 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__pixel_buffer where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__pixel_buffer
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_buffer_pixcfg") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_buffer_private_impl") ptr0

instance Marshal.WriteRaw Wuffs_base__pixel_buffer where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__pixel_buffer
            wuffs_base__pixel_buffer_pixcfg2
            wuffs_base__pixel_buffer_private_impl3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_buffer_pixcfg") ptr0 wuffs_base__pixel_buffer_pixcfg2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_buffer_private_impl") ptr0 wuffs_base__pixel_buffer_private_impl3

deriving via Marshal.EquivStorable Wuffs_base__pixel_buffer instance BG.Storable Wuffs_base__pixel_buffer

deriving via Struct.IsStructViaReadRaw Wuffs_base__pixel_buffer instance Struct.IsStruct Wuffs_base__pixel_buffer

{-| __C declaration:__ @pixcfg@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5309:28@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__pixel_config
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_buffer_pixcfg" Wuffs_base__pixel_buffer ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_buffer { wuffs_base__pixel_buffer_pixcfg = y1
                                   , wuffs_base__pixel_buffer_private_impl = BG.getField @"wuffs_base__pixel_buffer_private_impl" x0
                                   }
      , BG.getField @"wuffs_base__pixel_buffer_pixcfg" x0
      )

instance ( ty ~ Wuffs_base__pixel_config
         ) => BG.HasField "wuffs_base__pixel_buffer_pixcfg" (BG.Ptr Wuffs_base__pixel_buffer) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_buffer_pixcfg")

instance HasCField.HasCField Wuffs_base__pixel_buffer "wuffs_base__pixel_buffer_pixcfg" where

  type CFieldType Wuffs_base__pixel_buffer "wuffs_base__pixel_buffer_pixcfg" =
    Wuffs_base__pixel_config

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @private_impl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5316:5@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__pixel_buffer__struct_private_impl
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_buffer_private_impl" Wuffs_base__pixel_buffer ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_buffer { wuffs_base__pixel_buffer_private_impl = y1
                                   , wuffs_base__pixel_buffer_pixcfg = BG.getField @"wuffs_base__pixel_buffer_pixcfg" x0
                                   }
      , BG.getField @"wuffs_base__pixel_buffer_private_impl" x0
      )

instance ( ty ~ Wuffs_base__pixel_buffer__struct_private_impl
         ) => BG.HasField "wuffs_base__pixel_buffer_private_impl" (BG.Ptr Wuffs_base__pixel_buffer) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_buffer_private_impl")

instance HasCField.HasCField Wuffs_base__pixel_buffer "wuffs_base__pixel_buffer_private_impl" where

  type CFieldType Wuffs_base__pixel_buffer "wuffs_base__pixel_buffer_private_impl" =
    Wuffs_base__pixel_buffer__struct_private_impl

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @struct \@wuffs_base__decode_frame_options__struct_private_impl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5616:3@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__decode_frame_options__struct_private_impl = Wuffs_base__decode_frame_options__struct_private_impl
  { wuffs_base__decode_frame_options__struct_private_impl_TODO :: HsBindgen.Runtime.LibC.Word8
    {- ^ __C declaration:__ @TODO@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5617:13@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__decode_frame_options__struct_private_impl where

  staticSizeOf = \_ -> (1 :: Int)

  staticAlignment = \_ -> (1 :: Int)

instance Marshal.ReadRaw Wuffs_base__decode_frame_options__struct_private_impl where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__decode_frame_options__struct_private_impl
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__decode_frame_options__struct_private_impl_TODO") ptr0

instance Marshal.WriteRaw Wuffs_base__decode_frame_options__struct_private_impl where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__decode_frame_options__struct_private_impl
            wuffs_base__decode_frame_options__struct_private_impl_TODO2 ->
              HasCField.writeRaw (BG.Proxy @"wuffs_base__decode_frame_options__struct_private_impl_TODO") ptr0 wuffs_base__decode_frame_options__struct_private_impl_TODO2

deriving via Marshal.EquivStorable Wuffs_base__decode_frame_options__struct_private_impl instance BG.Storable Wuffs_base__decode_frame_options__struct_private_impl

deriving via Struct.IsStructViaReadRaw Wuffs_base__decode_frame_options__struct_private_impl instance Struct.IsStruct Wuffs_base__decode_frame_options__struct_private_impl

{-| __C declaration:__ @TODO@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5617:13@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word8
         ) => BG.CompatHasField.HasField "wuffs_base__decode_frame_options__struct_private_impl_TODO" Wuffs_base__decode_frame_options__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__decode_frame_options__struct_private_impl {wuffs_base__decode_frame_options__struct_private_impl_TODO = y1}
      , BG.getField @"wuffs_base__decode_frame_options__struct_private_impl_TODO" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word8
         ) => BG.HasField "wuffs_base__decode_frame_options__struct_private_impl_TODO" (BG.Ptr Wuffs_base__decode_frame_options__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__decode_frame_options__struct_private_impl_TODO")

instance HasCField.HasCField Wuffs_base__decode_frame_options__struct_private_impl "wuffs_base__decode_frame_options__struct_private_impl_TODO" where

  type CFieldType Wuffs_base__decode_frame_options__struct_private_impl "wuffs_base__decode_frame_options__struct_private_impl_TODO" =
    HsBindgen.Runtime.LibC.Word8

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct wuffs_base__decode_frame_options__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5613:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__decode_frame_options = Wuffs_base__decode_frame_options
  { wuffs_base__decode_frame_options_private_impl :: Wuffs_base__decode_frame_options__struct_private_impl
    {- ^ __C declaration:__ @private_impl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5618:5@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__decode_frame_options where

  staticSizeOf = \_ -> (1 :: Int)

  staticAlignment = \_ -> (1 :: Int)

instance Marshal.ReadRaw Wuffs_base__decode_frame_options where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__decode_frame_options
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__decode_frame_options_private_impl") ptr0

instance Marshal.WriteRaw Wuffs_base__decode_frame_options where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__decode_frame_options
            wuffs_base__decode_frame_options_private_impl2 ->
              HasCField.writeRaw (BG.Proxy @"wuffs_base__decode_frame_options_private_impl") ptr0 wuffs_base__decode_frame_options_private_impl2

deriving via Marshal.EquivStorable Wuffs_base__decode_frame_options instance BG.Storable Wuffs_base__decode_frame_options

deriving via Struct.IsStructViaReadRaw Wuffs_base__decode_frame_options instance Struct.IsStruct Wuffs_base__decode_frame_options

{-| __C declaration:__ @private_impl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5618:5@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__decode_frame_options__struct_private_impl
         ) => BG.CompatHasField.HasField "wuffs_base__decode_frame_options_private_impl" Wuffs_base__decode_frame_options ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__decode_frame_options {wuffs_base__decode_frame_options_private_impl = y1}
      , BG.getField @"wuffs_base__decode_frame_options_private_impl" x0
      )

instance ( ty ~ Wuffs_base__decode_frame_options__struct_private_impl
         ) => BG.HasField "wuffs_base__decode_frame_options_private_impl" (BG.Ptr Wuffs_base__decode_frame_options) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__decode_frame_options_private_impl")

instance HasCField.HasCField Wuffs_base__decode_frame_options "wuffs_base__decode_frame_options_private_impl" where

  type CFieldType Wuffs_base__decode_frame_options "wuffs_base__decode_frame_options_private_impl" =
    Wuffs_base__decode_frame_options__struct_private_impl

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Wuffs_base__pixel_swizzler__func'

    __C declaration:__ @wuffs_base__pixel_swizzler__func@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5649:20@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
newtype Wuffs_base__pixel_swizzler__func_Aux = Wuffs_base__pixel_swizzler__func_Aux
  { unwrapWuffs_base__pixel_swizzler__func_Aux :: BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> PtrConst.PtrConst HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> IO HsBindgen.Runtime.LibC.Word64
  }
  deriving stock (BG.Generic)

-- __unique:__ @toWuffs_base__pixel_swizzler__func_Aux@
foreign import ccall safe "wrapper" hs_bindgen_5318a6e87ea1feca_base ::
     (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> IO HsBindgen.Runtime.LibC.Word64)
  -> IO (BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> IO HsBindgen.Runtime.LibC.Word64))

-- __unique:__ @toWuffs_base__pixel_swizzler__func_Aux@
hs_bindgen_5318a6e87ea1feca ::
     Wuffs_base__pixel_swizzler__func_Aux
  -> IO (BG.FunPtr Wuffs_base__pixel_swizzler__func_Aux)
hs_bindgen_5318a6e87ea1feca =
  \fun0 ->
    fmap BG.castFunPtr (hs_bindgen_5318a6e87ea1feca_base (\x1 ->
                                                            \x2 ->
                                                              \x3 ->
                                                                \x4 ->
                                                                  \x5 ->
                                                                    \x6 ->
                                                                      fmap BG.toFFIType (BG.getField @"unwrapWuffs_base__pixel_swizzler__func_Aux" fun0 (BG.fromFFIType x1) (BG.fromFFIType x2) (BG.fromFFIType x3) (BG.fromFFIType x4) (BG.fromFFIType x5) (BG.fromFFIType x6))))

-- __unique:__ @fromWuffs_base__pixel_swizzler__func_Aux@
foreign import ccall safe "dynamic" hs_bindgen_8f40c1736e030acb_base ::
     BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> IO HsBindgen.Runtime.LibC.Word64)
  -> BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> IO HsBindgen.Runtime.LibC.Word64

-- __unique:__ @fromWuffs_base__pixel_swizzler__func_Aux@
hs_bindgen_8f40c1736e030acb ::
     BG.FunPtr Wuffs_base__pixel_swizzler__func_Aux
  -> Wuffs_base__pixel_swizzler__func_Aux
hs_bindgen_8f40c1736e030acb =
  \funPtr0 ->
    Wuffs_base__pixel_swizzler__func_Aux (\x1 ->
                                            \x2 ->
                                              \x3 ->
                                                \x4 ->
                                                  \x5 ->
                                                    \x6 ->
                                                      fmap BG.fromFFIType (hs_bindgen_8f40c1736e030acb_base (BG.castFunPtr funPtr0) (BG.toFFIType x1) (BG.toFFIType x2) (BG.toFFIType x3) (BG.toFFIType x4) (BG.toFFIType x5) (BG.toFFIType x6)))

instance BG.ToFunPtr Wuffs_base__pixel_swizzler__func_Aux where

  toFunPtr = hs_bindgen_5318a6e87ea1feca

instance BG.FromFunPtr Wuffs_base__pixel_swizzler__func_Aux where

  fromFunPtr = hs_bindgen_8f40c1736e030acb

instance ( ty ~ (BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> PtrConst.PtrConst HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.CompatHasField.HasField "unwrapWuffs_base__pixel_swizzler__func_Aux" Wuffs_base__pixel_swizzler__func_Aux ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_swizzler__func_Aux {unwrapWuffs_base__pixel_swizzler__func_Aux = y1}
      , BG.getField @"unwrapWuffs_base__pixel_swizzler__func_Aux" x0
      )

instance ( ty ~ (BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> PtrConst.PtrConst HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.HasField "unwrapWuffs_base__pixel_swizzler__func_Aux" (BG.Ptr Wuffs_base__pixel_swizzler__func_Aux) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"unwrapWuffs_base__pixel_swizzler__func_Aux")

instance HasCField.HasCField Wuffs_base__pixel_swizzler__func_Aux "unwrapWuffs_base__pixel_swizzler__func_Aux" where

  type CFieldType Wuffs_base__pixel_swizzler__func_Aux "unwrapWuffs_base__pixel_swizzler__func_Aux" =
    BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> PtrConst.PtrConst HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> IO HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @wuffs_base__pixel_swizzler__func@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5649:20@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
newtype Wuffs_base__pixel_swizzler__func = Wuffs_base__pixel_swizzler__func
  { unwrapWuffs_base__pixel_swizzler__func :: BG.FunPtr Wuffs_base__pixel_swizzler__func_Aux
  }
  deriving stock (Eq, BG.Generic, Ord, Show)
  deriving newtype
    ( BG.HasFFIType
    , Marshal.ReadRaw
    , Marshal.StaticSize
    , BG.Storable
    , Marshal.WriteRaw
    )

instance ( ty ~ BG.FunPtr Wuffs_base__pixel_swizzler__func_Aux
         ) => BG.CompatHasField.HasField "unwrapWuffs_base__pixel_swizzler__func" Wuffs_base__pixel_swizzler__func ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_swizzler__func {unwrapWuffs_base__pixel_swizzler__func = y1}
      , BG.getField @"unwrapWuffs_base__pixel_swizzler__func" x0
      )

instance ( ty ~ BG.FunPtr Wuffs_base__pixel_swizzler__func_Aux
         ) => BG.HasField "unwrapWuffs_base__pixel_swizzler__func" (BG.Ptr Wuffs_base__pixel_swizzler__func) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"unwrapWuffs_base__pixel_swizzler__func")

instance HasCField.HasCField Wuffs_base__pixel_swizzler__func "unwrapWuffs_base__pixel_swizzler__func" where

  type CFieldType Wuffs_base__pixel_swizzler__func "unwrapWuffs_base__pixel_swizzler__func" =
    BG.FunPtr Wuffs_base__pixel_swizzler__func_Aux

  offset# = \_ -> \_ -> 0

{-| Auxiliary type used by 'Wuffs_base__pixel_swizzler__transparent_black_func'

    __C declaration:__ @wuffs_base__pixel_swizzler__transparent_black_func@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5656:20@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
newtype Wuffs_base__pixel_swizzler__transparent_black_func_Aux = Wuffs_base__pixel_swizzler__transparent_black_func_Aux
  { unwrapWuffs_base__pixel_swizzler__transparent_black_func_Aux :: BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> HsBindgen.Runtime.LibC.Word64 -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64
  }
  deriving stock (BG.Generic)

-- __unique:__ @toWuffs_base__pixel_swizzler__transparent_black_func_Aux@
foreign import ccall safe "wrapper" hs_bindgen_66a66c90a01010fc_base ::
     (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> HsBindgen.Runtime.LibC.Word64 -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
  -> IO (BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> HsBindgen.Runtime.LibC.Word64 -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64))

-- __unique:__ @toWuffs_base__pixel_swizzler__transparent_black_func_Aux@
hs_bindgen_66a66c90a01010fc ::
     Wuffs_base__pixel_swizzler__transparent_black_func_Aux
  -> IO (BG.FunPtr Wuffs_base__pixel_swizzler__transparent_black_func_Aux)
hs_bindgen_66a66c90a01010fc =
  \fun0 ->
    fmap BG.castFunPtr (hs_bindgen_66a66c90a01010fc_base (\x1 ->
                                                            \x2 ->
                                                              \x3 ->
                                                                \x4 ->
                                                                  \x5 ->
                                                                    \x6 ->
                                                                      fmap BG.toFFIType (BG.getField @"unwrapWuffs_base__pixel_swizzler__transparent_black_func_Aux" fun0 (BG.fromFFIType x1) (BG.fromFFIType x2) (BG.fromFFIType x3) (BG.fromFFIType x4) (BG.fromFFIType x5) (BG.fromFFIType x6))))

-- __unique:__ @fromWuffs_base__pixel_swizzler__transparent_black_func_Aux@
foreign import ccall safe "dynamic" hs_bindgen_48eb5c761e0344de_base ::
     BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> HsBindgen.Runtime.LibC.Word64 -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
  -> BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.CSize -> HsBindgen.Runtime.LibC.Word64 -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64

-- __unique:__ @fromWuffs_base__pixel_swizzler__transparent_black_func_Aux@
hs_bindgen_48eb5c761e0344de ::
     BG.FunPtr Wuffs_base__pixel_swizzler__transparent_black_func_Aux
  -> Wuffs_base__pixel_swizzler__transparent_black_func_Aux
hs_bindgen_48eb5c761e0344de =
  \funPtr0 ->
    Wuffs_base__pixel_swizzler__transparent_black_func_Aux (\x1 ->
                                                              \x2 ->
                                                                \x3 ->
                                                                  \x4 ->
                                                                    \x5 ->
                                                                      \x6 ->
                                                                        fmap BG.fromFFIType (hs_bindgen_48eb5c761e0344de_base (BG.castFunPtr funPtr0) (BG.toFFIType x1) (BG.toFFIType x2) (BG.toFFIType x3) (BG.toFFIType x4) (BG.toFFIType x5) (BG.toFFIType x6)))

instance BG.ToFunPtr Wuffs_base__pixel_swizzler__transparent_black_func_Aux where

  toFunPtr = hs_bindgen_66a66c90a01010fc

instance BG.FromFunPtr Wuffs_base__pixel_swizzler__transparent_black_func_Aux where

  fromFunPtr = hs_bindgen_48eb5c761e0344de

instance ( ty ~ (BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> HsBindgen.Runtime.LibC.Word64 -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.CompatHasField.HasField "unwrapWuffs_base__pixel_swizzler__transparent_black_func_Aux" Wuffs_base__pixel_swizzler__transparent_black_func_Aux ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_swizzler__transparent_black_func_Aux {unwrapWuffs_base__pixel_swizzler__transparent_black_func_Aux = y1}
      , BG.getField @"unwrapWuffs_base__pixel_swizzler__transparent_black_func_Aux" x0
      )

instance ( ty ~ (BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> HsBindgen.Runtime.LibC.Word64 -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.HasField "unwrapWuffs_base__pixel_swizzler__transparent_black_func_Aux" (BG.Ptr Wuffs_base__pixel_swizzler__transparent_black_func_Aux) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"unwrapWuffs_base__pixel_swizzler__transparent_black_func_Aux")

instance HasCField.HasCField Wuffs_base__pixel_swizzler__transparent_black_func_Aux "unwrapWuffs_base__pixel_swizzler__transparent_black_func_Aux" where

  type CFieldType Wuffs_base__pixel_swizzler__transparent_black_func_Aux "unwrapWuffs_base__pixel_swizzler__transparent_black_func_Aux" =
    BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> BG.Ptr HsBindgen.Runtime.LibC.Word8 -> HsBindgen.Runtime.LibC.CSize -> HsBindgen.Runtime.LibC.Word64 -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @wuffs_base__pixel_swizzler__transparent_black_func@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5656:20@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
newtype Wuffs_base__pixel_swizzler__transparent_black_func = Wuffs_base__pixel_swizzler__transparent_black_func
  { unwrapWuffs_base__pixel_swizzler__transparent_black_func :: BG.FunPtr Wuffs_base__pixel_swizzler__transparent_black_func_Aux
  }
  deriving stock (Eq, BG.Generic, Ord, Show)
  deriving newtype
    ( BG.HasFFIType
    , Marshal.ReadRaw
    , Marshal.StaticSize
    , BG.Storable
    , Marshal.WriteRaw
    )

instance ( ty ~ BG.FunPtr Wuffs_base__pixel_swizzler__transparent_black_func_Aux
         ) => BG.CompatHasField.HasField "unwrapWuffs_base__pixel_swizzler__transparent_black_func" Wuffs_base__pixel_swizzler__transparent_black_func ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_swizzler__transparent_black_func {unwrapWuffs_base__pixel_swizzler__transparent_black_func = y1}
      , BG.getField @"unwrapWuffs_base__pixel_swizzler__transparent_black_func" x0
      )

instance ( ty ~ BG.FunPtr Wuffs_base__pixel_swizzler__transparent_black_func_Aux
         ) => BG.HasField "unwrapWuffs_base__pixel_swizzler__transparent_black_func" (BG.Ptr Wuffs_base__pixel_swizzler__transparent_black_func) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"unwrapWuffs_base__pixel_swizzler__transparent_black_func")

instance HasCField.HasCField Wuffs_base__pixel_swizzler__transparent_black_func "unwrapWuffs_base__pixel_swizzler__transparent_black_func" where

  type CFieldType Wuffs_base__pixel_swizzler__transparent_black_func "unwrapWuffs_base__pixel_swizzler__transparent_black_func" =
    BG.FunPtr Wuffs_base__pixel_swizzler__transparent_black_func_Aux

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct \@wuffs_base__pixel_swizzler__struct_private_impl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5667:3@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__pixel_swizzler__struct_private_impl = Wuffs_base__pixel_swizzler__struct_private_impl
  { wuffs_base__pixel_swizzler__struct_private_impl_func :: Wuffs_base__pixel_swizzler__func
    {- ^ __C declaration:__ @func@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5668:38@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func :: Wuffs_base__pixel_swizzler__transparent_black_func
    {- ^ __C declaration:__ @transparent_black_func@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5669:56@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @dst_pixfmt_bytes_per_pixel@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5670:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @src_pixfmt_bytes_per_pixel@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5671:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__pixel_swizzler__struct_private_impl where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__pixel_swizzler__struct_private_impl where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__pixel_swizzler__struct_private_impl
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_swizzler__struct_private_impl_func") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel") ptr0

instance Marshal.WriteRaw Wuffs_base__pixel_swizzler__struct_private_impl where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__pixel_swizzler__struct_private_impl
            wuffs_base__pixel_swizzler__struct_private_impl_func2
            wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func3
            wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel4
            wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel5 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_swizzler__struct_private_impl_func") ptr0 wuffs_base__pixel_swizzler__struct_private_impl_func2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func") ptr0 wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel") ptr0 wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel") ptr0 wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel5

deriving via Marshal.EquivStorable Wuffs_base__pixel_swizzler__struct_private_impl instance BG.Storable Wuffs_base__pixel_swizzler__struct_private_impl

deriving via Struct.IsStructViaReadRaw Wuffs_base__pixel_swizzler__struct_private_impl instance Struct.IsStruct Wuffs_base__pixel_swizzler__struct_private_impl

{-| __C declaration:__ @func@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5668:38@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__pixel_swizzler__func
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_swizzler__struct_private_impl_func" Wuffs_base__pixel_swizzler__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_swizzler__struct_private_impl { wuffs_base__pixel_swizzler__struct_private_impl_func = y1
                                                          , wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func = BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func" x0
                                                          , wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel = BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel" x0
                                                          , wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel = BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel" x0
                                                          }
      , BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_func" x0
      )

instance ( ty ~ Wuffs_base__pixel_swizzler__func
         ) => BG.HasField "wuffs_base__pixel_swizzler__struct_private_impl_func" (BG.Ptr Wuffs_base__pixel_swizzler__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_swizzler__struct_private_impl_func")

instance HasCField.HasCField Wuffs_base__pixel_swizzler__struct_private_impl "wuffs_base__pixel_swizzler__struct_private_impl_func" where

  type CFieldType Wuffs_base__pixel_swizzler__struct_private_impl "wuffs_base__pixel_swizzler__struct_private_impl_func" =
    Wuffs_base__pixel_swizzler__func

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @transparent_black_func@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5669:56@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__pixel_swizzler__transparent_black_func
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func" Wuffs_base__pixel_swizzler__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_swizzler__struct_private_impl { wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func = y1
                                                          , wuffs_base__pixel_swizzler__struct_private_impl_func = BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_func" x0
                                                          , wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel = BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel" x0
                                                          , wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel = BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel" x0
                                                          }
      , BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func" x0
      )

instance ( ty ~ Wuffs_base__pixel_swizzler__transparent_black_func
         ) => BG.HasField "wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func" (BG.Ptr Wuffs_base__pixel_swizzler__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func")

instance HasCField.HasCField Wuffs_base__pixel_swizzler__struct_private_impl "wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func" where

  type CFieldType Wuffs_base__pixel_swizzler__struct_private_impl "wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func" =
    Wuffs_base__pixel_swizzler__transparent_black_func

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @dst_pixfmt_bytes_per_pixel@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5670:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel" Wuffs_base__pixel_swizzler__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_swizzler__struct_private_impl { wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel = y1
                                                          , wuffs_base__pixel_swizzler__struct_private_impl_func = BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_func" x0
                                                          , wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func = BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func" x0
                                                          , wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel = BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel" x0
                                                          }
      , BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel" (BG.Ptr Wuffs_base__pixel_swizzler__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel")

instance HasCField.HasCField Wuffs_base__pixel_swizzler__struct_private_impl "wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel" where

  type CFieldType Wuffs_base__pixel_swizzler__struct_private_impl "wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @src_pixfmt_bytes_per_pixel@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5671:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel" Wuffs_base__pixel_swizzler__struct_private_impl ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_swizzler__struct_private_impl { wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel = y1
                                                          , wuffs_base__pixel_swizzler__struct_private_impl_func = BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_func" x0
                                                          , wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func = BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_transparent_black_func" x0
                                                          , wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel = BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_dst_pixfmt_bytes_per_pixel" x0
                                                          }
      , BG.getField @"wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel" (BG.Ptr Wuffs_base__pixel_swizzler__struct_private_impl) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel")

instance HasCField.HasCField Wuffs_base__pixel_swizzler__struct_private_impl "wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel" where

  type CFieldType Wuffs_base__pixel_swizzler__struct_private_impl "wuffs_base__pixel_swizzler__struct_private_impl_src_pixfmt_bytes_per_pixel" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 20

{-| __C declaration:__ @struct wuffs_base__pixel_swizzler__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5664:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__pixel_swizzler = Wuffs_base__pixel_swizzler
  { wuffs_base__pixel_swizzler_private_impl :: Wuffs_base__pixel_swizzler__struct_private_impl
    {- ^ __C declaration:__ @private_impl@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5672:5@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__pixel_swizzler where

  staticSizeOf = \_ -> (24 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__pixel_swizzler where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__pixel_swizzler
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__pixel_swizzler_private_impl") ptr0

instance Marshal.WriteRaw Wuffs_base__pixel_swizzler where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__pixel_swizzler wuffs_base__pixel_swizzler_private_impl2 ->
            HasCField.writeRaw (BG.Proxy @"wuffs_base__pixel_swizzler_private_impl") ptr0 wuffs_base__pixel_swizzler_private_impl2

deriving via Marshal.EquivStorable Wuffs_base__pixel_swizzler instance BG.Storable Wuffs_base__pixel_swizzler

deriving via Struct.IsStructViaReadRaw Wuffs_base__pixel_swizzler instance Struct.IsStruct Wuffs_base__pixel_swizzler

{-| __C declaration:__ @private_impl@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5672:5@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ Wuffs_base__pixel_swizzler__struct_private_impl
         ) => BG.CompatHasField.HasField "wuffs_base__pixel_swizzler_private_impl" Wuffs_base__pixel_swizzler ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__pixel_swizzler {wuffs_base__pixel_swizzler_private_impl = y1}
      , BG.getField @"wuffs_base__pixel_swizzler_private_impl" x0
      )

instance ( ty ~ Wuffs_base__pixel_swizzler__struct_private_impl
         ) => BG.HasField "wuffs_base__pixel_swizzler_private_impl" (BG.Ptr Wuffs_base__pixel_swizzler) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__pixel_swizzler_private_impl")

instance HasCField.HasCField Wuffs_base__pixel_swizzler "wuffs_base__pixel_swizzler_private_impl" where

  type CFieldType Wuffs_base__pixel_swizzler "wuffs_base__pixel_swizzler_private_impl" =
    Wuffs_base__pixel_swizzler__struct_private_impl

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @struct wuffs_base__lossy_value_u16__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5847:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__lossy_value_u16 = Wuffs_base__lossy_value_u16
  { wuffs_base__lossy_value_u16_value :: HsBindgen.Runtime.LibC.Word16
    {- ^ __C declaration:__ @value@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5848:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__lossy_value_u16_lossy :: BG.CBool
    {- ^ __C declaration:__ @lossy@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5849:8@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__lossy_value_u16 where

  staticSizeOf = \_ -> (4 :: Int)

  staticAlignment = \_ -> (2 :: Int)

instance Marshal.ReadRaw Wuffs_base__lossy_value_u16 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__lossy_value_u16
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__lossy_value_u16_value") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__lossy_value_u16_lossy") ptr0

instance Marshal.WriteRaw Wuffs_base__lossy_value_u16 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__lossy_value_u16
            wuffs_base__lossy_value_u16_value2
            wuffs_base__lossy_value_u16_lossy3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__lossy_value_u16_value") ptr0 wuffs_base__lossy_value_u16_value2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__lossy_value_u16_lossy") ptr0 wuffs_base__lossy_value_u16_lossy3

deriving via Marshal.EquivStorable Wuffs_base__lossy_value_u16 instance BG.Storable Wuffs_base__lossy_value_u16

deriving via Struct.IsStructViaReadRaw Wuffs_base__lossy_value_u16 instance Struct.IsStruct Wuffs_base__lossy_value_u16

{-| __C declaration:__ @value@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5848:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word16
         ) => BG.CompatHasField.HasField "wuffs_base__lossy_value_u16_value" Wuffs_base__lossy_value_u16 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__lossy_value_u16 { wuffs_base__lossy_value_u16_value = y1
                                      , wuffs_base__lossy_value_u16_lossy = BG.getField @"wuffs_base__lossy_value_u16_lossy" x0
                                      }
      , BG.getField @"wuffs_base__lossy_value_u16_value" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word16
         ) => BG.HasField "wuffs_base__lossy_value_u16_value" (BG.Ptr Wuffs_base__lossy_value_u16) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__lossy_value_u16_value")

instance HasCField.HasCField Wuffs_base__lossy_value_u16 "wuffs_base__lossy_value_u16_value" where

  type CFieldType Wuffs_base__lossy_value_u16 "wuffs_base__lossy_value_u16_value" =
    HsBindgen.Runtime.LibC.Word16

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @lossy@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5849:8@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.CBool
         ) => BG.CompatHasField.HasField "wuffs_base__lossy_value_u16_lossy" Wuffs_base__lossy_value_u16 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__lossy_value_u16 { wuffs_base__lossy_value_u16_lossy = y1
                                      , wuffs_base__lossy_value_u16_value = BG.getField @"wuffs_base__lossy_value_u16_value" x0
                                      }
      , BG.getField @"wuffs_base__lossy_value_u16_lossy" x0
      )

instance ( ty ~ BG.CBool
         ) => BG.HasField "wuffs_base__lossy_value_u16_lossy" (BG.Ptr Wuffs_base__lossy_value_u16) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__lossy_value_u16_lossy")

instance HasCField.HasCField Wuffs_base__lossy_value_u16 "wuffs_base__lossy_value_u16_lossy" where

  type CFieldType Wuffs_base__lossy_value_u16 "wuffs_base__lossy_value_u16_lossy" =
    BG.CBool

  offset# = \_ -> \_ -> 2

{-| __C declaration:__ @struct wuffs_base__lossy_value_u32__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5852:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__lossy_value_u32 = Wuffs_base__lossy_value_u32
  { wuffs_base__lossy_value_u32_value :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @value@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5853:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__lossy_value_u32_lossy :: BG.CBool
    {- ^ __C declaration:__ @lossy@

         __defined at:__ @wuffs\/wuffs-v0.4.c 5854:8@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__lossy_value_u32 where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wuffs_base__lossy_value_u32 where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__lossy_value_u32
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__lossy_value_u32_value") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__lossy_value_u32_lossy") ptr0

instance Marshal.WriteRaw Wuffs_base__lossy_value_u32 where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__lossy_value_u32
            wuffs_base__lossy_value_u32_value2
            wuffs_base__lossy_value_u32_lossy3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__lossy_value_u32_value") ptr0 wuffs_base__lossy_value_u32_value2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__lossy_value_u32_lossy") ptr0 wuffs_base__lossy_value_u32_lossy3

deriving via Marshal.EquivStorable Wuffs_base__lossy_value_u32 instance BG.Storable Wuffs_base__lossy_value_u32

deriving via Struct.IsStructViaReadRaw Wuffs_base__lossy_value_u32 instance Struct.IsStruct Wuffs_base__lossy_value_u32

{-| __C declaration:__ @value@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5853:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__lossy_value_u32_value" Wuffs_base__lossy_value_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__lossy_value_u32 { wuffs_base__lossy_value_u32_value = y1
                                      , wuffs_base__lossy_value_u32_lossy = BG.getField @"wuffs_base__lossy_value_u32_lossy" x0
                                      }
      , BG.getField @"wuffs_base__lossy_value_u32_value" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__lossy_value_u32_value" (BG.Ptr Wuffs_base__lossy_value_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__lossy_value_u32_value")

instance HasCField.HasCField Wuffs_base__lossy_value_u32 "wuffs_base__lossy_value_u32_value" where

  type CFieldType Wuffs_base__lossy_value_u32 "wuffs_base__lossy_value_u32_value" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @lossy@

    __defined at:__ @wuffs\/wuffs-v0.4.c 5854:8@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.CBool
         ) => BG.CompatHasField.HasField "wuffs_base__lossy_value_u32_lossy" Wuffs_base__lossy_value_u32 ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__lossy_value_u32 { wuffs_base__lossy_value_u32_lossy = y1
                                      , wuffs_base__lossy_value_u32_value = BG.getField @"wuffs_base__lossy_value_u32_value" x0
                                      }
      , BG.getField @"wuffs_base__lossy_value_u32_lossy" x0
      )

instance ( ty ~ BG.CBool
         ) => BG.HasField "wuffs_base__lossy_value_u32_lossy" (BG.Ptr Wuffs_base__lossy_value_u32) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__lossy_value_u32_lossy")

instance HasCField.HasCField Wuffs_base__lossy_value_u32 "wuffs_base__lossy_value_u32_lossy" where

  type CFieldType Wuffs_base__lossy_value_u32 "wuffs_base__lossy_value_u32_lossy" =
    BG.CBool

  offset# = \_ -> \_ -> 4

{-| __C declaration:__ @macro WUFFS_BASE__I64__BYTE_LENGTH__MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6008:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__I64__BYTE_LENGTH__MAX_INCL :: BG.CInt
wUFFS_BASE__I64__BYTE_LENGTH__MAX_INCL =
  (20 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__U64__BYTE_LENGTH__MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6012:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__U64__BYTE_LENGTH__MAX_INCL :: BG.CInt
wUFFS_BASE__U64__BYTE_LENGTH__MAX_INCL =
  (21 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UNICODE_CODE_POINT__MIN_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6195:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UNICODE_CODE_POINT__MIN_INCL :: BG.CInt
wUFFS_BASE__UNICODE_CODE_POINT__MIN_INCL =
  (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UNICODE_CODE_POINT__MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6196:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UNICODE_CODE_POINT__MAX_INCL :: BG.CInt
wUFFS_BASE__UNICODE_CODE_POINT__MAX_INCL =
  (1114111 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UNICODE_REPLACEMENT_CHARACTER@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6198:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UNICODE_REPLACEMENT_CHARACTER :: BG.CInt
wUFFS_BASE__UNICODE_REPLACEMENT_CHARACTER =
  (65533 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UNICODE_SURROGATE__MIN_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6200:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UNICODE_SURROGATE__MIN_INCL :: BG.CInt
wUFFS_BASE__UNICODE_SURROGATE__MIN_INCL =
  (55296 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UNICODE_SURROGATE__MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6201:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UNICODE_SURROGATE__MAX_INCL :: BG.CInt
wUFFS_BASE__UNICODE_SURROGATE__MAX_INCL =
  (57343 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__ASCII__MIN_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6203:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__ASCII__MIN_INCL :: BG.CInt
wUFFS_BASE__ASCII__MIN_INCL = (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__ASCII__MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6204:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__ASCII__MAX_INCL :: BG.CInt
wUFFS_BASE__ASCII__MAX_INCL = (127 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UTF_8__BYTE_LENGTH__MIN_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6206:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UTF_8__BYTE_LENGTH__MIN_INCL :: BG.CInt
wUFFS_BASE__UTF_8__BYTE_LENGTH__MIN_INCL =
  (1 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UTF_8__BYTE_LENGTH__MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6207:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UTF_8__BYTE_LENGTH__MAX_INCL :: BG.CInt
wUFFS_BASE__UTF_8__BYTE_LENGTH__MAX_INCL =
  (4 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UTF_8__BYTE_LENGTH_1__CODE_POINT__MIN_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6209:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UTF_8__BYTE_LENGTH_1__CODE_POINT__MIN_INCL :: BG.CInt
wUFFS_BASE__UTF_8__BYTE_LENGTH_1__CODE_POINT__MIN_INCL =
  (0 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UTF_8__BYTE_LENGTH_1__CODE_POINT__MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6210:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UTF_8__BYTE_LENGTH_1__CODE_POINT__MAX_INCL :: BG.CInt
wUFFS_BASE__UTF_8__BYTE_LENGTH_1__CODE_POINT__MAX_INCL =
  (127 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UTF_8__BYTE_LENGTH_2__CODE_POINT__MIN_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6211:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UTF_8__BYTE_LENGTH_2__CODE_POINT__MIN_INCL :: BG.CInt
wUFFS_BASE__UTF_8__BYTE_LENGTH_2__CODE_POINT__MIN_INCL =
  (128 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UTF_8__BYTE_LENGTH_2__CODE_POINT__MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6212:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UTF_8__BYTE_LENGTH_2__CODE_POINT__MAX_INCL :: BG.CInt
wUFFS_BASE__UTF_8__BYTE_LENGTH_2__CODE_POINT__MAX_INCL =
  (2047 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UTF_8__BYTE_LENGTH_3__CODE_POINT__MIN_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6213:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UTF_8__BYTE_LENGTH_3__CODE_POINT__MIN_INCL :: BG.CInt
wUFFS_BASE__UTF_8__BYTE_LENGTH_3__CODE_POINT__MIN_INCL =
  (2048 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UTF_8__BYTE_LENGTH_3__CODE_POINT__MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6214:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UTF_8__BYTE_LENGTH_3__CODE_POINT__MAX_INCL :: BG.CInt
wUFFS_BASE__UTF_8__BYTE_LENGTH_3__CODE_POINT__MAX_INCL =
  (65535 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UTF_8__BYTE_LENGTH_4__CODE_POINT__MIN_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6215:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UTF_8__BYTE_LENGTH_4__CODE_POINT__MIN_INCL :: BG.CInt
wUFFS_BASE__UTF_8__BYTE_LENGTH_4__CODE_POINT__MIN_INCL =
  (65536 :: BG.CInt)

{-| __C declaration:__ @macro WUFFS_BASE__UTF_8__BYTE_LENGTH_4__CODE_POINT__MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6216:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BASE__UTF_8__BYTE_LENGTH_4__CODE_POINT__MAX_INCL :: BG.CInt
wUFFS_BASE__UTF_8__BYTE_LENGTH_4__CODE_POINT__MAX_INCL =
  (1114111 :: BG.CInt)

{-| __C declaration:__ @struct wuffs_base__utf_8__next__output__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6222:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__utf_8__next__output = Wuffs_base__utf_8__next__output
  { wuffs_base__utf_8__next__output_code_point :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @code_point@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6223:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__utf_8__next__output_byte_length :: HsBindgen.Runtime.LibC.Word32
    {- ^ __C declaration:__ @byte_length@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6224:12@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__utf_8__next__output where

  staticSizeOf = \_ -> (8 :: Int)

  staticAlignment = \_ -> (4 :: Int)

instance Marshal.ReadRaw Wuffs_base__utf_8__next__output where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__utf_8__next__output
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__utf_8__next__output_code_point") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__utf_8__next__output_byte_length") ptr0

instance Marshal.WriteRaw Wuffs_base__utf_8__next__output where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__utf_8__next__output
            wuffs_base__utf_8__next__output_code_point2
            wuffs_base__utf_8__next__output_byte_length3 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__utf_8__next__output_code_point") ptr0 wuffs_base__utf_8__next__output_code_point2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__utf_8__next__output_byte_length") ptr0 wuffs_base__utf_8__next__output_byte_length3

deriving via Marshal.EquivStorable Wuffs_base__utf_8__next__output instance BG.Storable Wuffs_base__utf_8__next__output

deriving via Struct.IsStructViaReadRaw Wuffs_base__utf_8__next__output instance Struct.IsStruct Wuffs_base__utf_8__next__output

{-| __C declaration:__ @code_point@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6223:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__utf_8__next__output_code_point" Wuffs_base__utf_8__next__output ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__utf_8__next__output { wuffs_base__utf_8__next__output_code_point = y1
                                          , wuffs_base__utf_8__next__output_byte_length = BG.getField @"wuffs_base__utf_8__next__output_byte_length" x0
                                          }
      , BG.getField @"wuffs_base__utf_8__next__output_code_point" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__utf_8__next__output_code_point" (BG.Ptr Wuffs_base__utf_8__next__output) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__utf_8__next__output_code_point")

instance HasCField.HasCField Wuffs_base__utf_8__next__output "wuffs_base__utf_8__next__output_code_point" where

  type CFieldType Wuffs_base__utf_8__next__output "wuffs_base__utf_8__next__output_code_point" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @byte_length@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6224:12@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.CompatHasField.HasField "wuffs_base__utf_8__next__output_byte_length" Wuffs_base__utf_8__next__output ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__utf_8__next__output { wuffs_base__utf_8__next__output_byte_length = y1
                                          , wuffs_base__utf_8__next__output_code_point = BG.getField @"wuffs_base__utf_8__next__output_code_point" x0
                                          }
      , BG.getField @"wuffs_base__utf_8__next__output_byte_length" x0
      )

instance ( ty ~ HsBindgen.Runtime.LibC.Word32
         ) => BG.HasField "wuffs_base__utf_8__next__output_byte_length" (BG.Ptr Wuffs_base__utf_8__next__output) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__utf_8__next__output_byte_length")

instance HasCField.HasCField Wuffs_base__utf_8__next__output "wuffs_base__utf_8__next__output_byte_length" where

  type CFieldType Wuffs_base__utf_8__next__output "wuffs_base__utf_8__next__output_byte_length" =
    HsBindgen.Runtime.LibC.Word32

  offset# = \_ -> \_ -> 4

{-| __C declaration:__ @struct wuffs_base__hasher_u32__func_ptrs__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6362:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__hasher_u32__func_ptrs = Wuffs_base__hasher_u32__func_ptrs
  { wuffs_base__hasher_u32__func_ptrs_checksum_u32 :: BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word32)
    {- ^ __C declaration:__ @checksum_u32@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6363:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__hasher_u32__func_ptrs_get_quirk :: BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
    {- ^ __C declaration:__ @get_quirk@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6365:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__hasher_u32__func_ptrs_set_quirk :: BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
    {- ^ __C declaration:__ @set_quirk@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6368:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__hasher_u32__func_ptrs_update :: BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__empty_struct)
    {- ^ __C declaration:__ @update@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6372:30@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__hasher_u32__func_ptrs_update_u32 :: BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO HsBindgen.Runtime.LibC.Word32)
    {- ^ __C declaration:__ @update_u32@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6375:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__hasher_u32__func_ptrs where

  staticSizeOf = \_ -> (40 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__hasher_u32__func_ptrs where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__hasher_u32__func_ptrs
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_checksum_u32") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_get_quirk") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_set_quirk") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_update") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_update_u32") ptr0

instance Marshal.WriteRaw Wuffs_base__hasher_u32__func_ptrs where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__hasher_u32__func_ptrs
            wuffs_base__hasher_u32__func_ptrs_checksum_u322
            wuffs_base__hasher_u32__func_ptrs_get_quirk3
            wuffs_base__hasher_u32__func_ptrs_set_quirk4
            wuffs_base__hasher_u32__func_ptrs_update5
            wuffs_base__hasher_u32__func_ptrs_update_u326 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_checksum_u32") ptr0 wuffs_base__hasher_u32__func_ptrs_checksum_u322
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_get_quirk") ptr0 wuffs_base__hasher_u32__func_ptrs_get_quirk3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_set_quirk") ptr0 wuffs_base__hasher_u32__func_ptrs_set_quirk4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_update") ptr0 wuffs_base__hasher_u32__func_ptrs_update5
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_update_u32") ptr0 wuffs_base__hasher_u32__func_ptrs_update_u326

deriving via Marshal.EquivStorable Wuffs_base__hasher_u32__func_ptrs instance BG.Storable Wuffs_base__hasher_u32__func_ptrs

deriving via Struct.IsStructViaReadRaw Wuffs_base__hasher_u32__func_ptrs instance Struct.IsStruct Wuffs_base__hasher_u32__func_ptrs

{-| __C declaration:__ @checksum_u32@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6363:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word32)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_u32__func_ptrs_checksum_u32" Wuffs_base__hasher_u32__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_u32__func_ptrs { wuffs_base__hasher_u32__func_ptrs_checksum_u32 = y1
                                            , wuffs_base__hasher_u32__func_ptrs_get_quirk = BG.getField @"wuffs_base__hasher_u32__func_ptrs_get_quirk" x0
                                            , wuffs_base__hasher_u32__func_ptrs_set_quirk = BG.getField @"wuffs_base__hasher_u32__func_ptrs_set_quirk" x0
                                            , wuffs_base__hasher_u32__func_ptrs_update = BG.getField @"wuffs_base__hasher_u32__func_ptrs_update" x0
                                            , wuffs_base__hasher_u32__func_ptrs_update_u32 = BG.getField @"wuffs_base__hasher_u32__func_ptrs_update_u32" x0
                                            }
      , BG.getField @"wuffs_base__hasher_u32__func_ptrs_checksum_u32" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word32)
         ) => BG.HasField "wuffs_base__hasher_u32__func_ptrs_checksum_u32" (BG.Ptr Wuffs_base__hasher_u32__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_checksum_u32")

instance HasCField.HasCField Wuffs_base__hasher_u32__func_ptrs "wuffs_base__hasher_u32__func_ptrs_checksum_u32" where

  type CFieldType Wuffs_base__hasher_u32__func_ptrs "wuffs_base__hasher_u32__func_ptrs_checksum_u32" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word32)

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @get_quirk@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6365:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_u32__func_ptrs_get_quirk" Wuffs_base__hasher_u32__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_u32__func_ptrs { wuffs_base__hasher_u32__func_ptrs_get_quirk = y1
                                            , wuffs_base__hasher_u32__func_ptrs_checksum_u32 = BG.getField @"wuffs_base__hasher_u32__func_ptrs_checksum_u32" x0
                                            , wuffs_base__hasher_u32__func_ptrs_set_quirk = BG.getField @"wuffs_base__hasher_u32__func_ptrs_set_quirk" x0
                                            , wuffs_base__hasher_u32__func_ptrs_update = BG.getField @"wuffs_base__hasher_u32__func_ptrs_update" x0
                                            , wuffs_base__hasher_u32__func_ptrs_update_u32 = BG.getField @"wuffs_base__hasher_u32__func_ptrs_update_u32" x0
                                            }
      , BG.getField @"wuffs_base__hasher_u32__func_ptrs_get_quirk" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.HasField "wuffs_base__hasher_u32__func_ptrs_get_quirk" (BG.Ptr Wuffs_base__hasher_u32__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_get_quirk")

instance HasCField.HasCField Wuffs_base__hasher_u32__func_ptrs "wuffs_base__hasher_u32__func_ptrs_get_quirk" where

  type CFieldType Wuffs_base__hasher_u32__func_ptrs "wuffs_base__hasher_u32__func_ptrs_get_quirk" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @set_quirk@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6368:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_u32__func_ptrs_set_quirk" Wuffs_base__hasher_u32__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_u32__func_ptrs { wuffs_base__hasher_u32__func_ptrs_set_quirk = y1
                                            , wuffs_base__hasher_u32__func_ptrs_checksum_u32 = BG.getField @"wuffs_base__hasher_u32__func_ptrs_checksum_u32" x0
                                            , wuffs_base__hasher_u32__func_ptrs_get_quirk = BG.getField @"wuffs_base__hasher_u32__func_ptrs_get_quirk" x0
                                            , wuffs_base__hasher_u32__func_ptrs_update = BG.getField @"wuffs_base__hasher_u32__func_ptrs_update" x0
                                            , wuffs_base__hasher_u32__func_ptrs_update_u32 = BG.getField @"wuffs_base__hasher_u32__func_ptrs_update_u32" x0
                                            }
      , BG.getField @"wuffs_base__hasher_u32__func_ptrs_set_quirk" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
         ) => BG.HasField "wuffs_base__hasher_u32__func_ptrs_set_quirk" (BG.Ptr Wuffs_base__hasher_u32__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_set_quirk")

instance HasCField.HasCField Wuffs_base__hasher_u32__func_ptrs "wuffs_base__hasher_u32__func_ptrs_set_quirk" where

  type CFieldType Wuffs_base__hasher_u32__func_ptrs "wuffs_base__hasher_u32__func_ptrs_set_quirk" =
    BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @update@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6372:30@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__empty_struct)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_u32__func_ptrs_update" Wuffs_base__hasher_u32__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_u32__func_ptrs { wuffs_base__hasher_u32__func_ptrs_update = y1
                                            , wuffs_base__hasher_u32__func_ptrs_checksum_u32 = BG.getField @"wuffs_base__hasher_u32__func_ptrs_checksum_u32" x0
                                            , wuffs_base__hasher_u32__func_ptrs_get_quirk = BG.getField @"wuffs_base__hasher_u32__func_ptrs_get_quirk" x0
                                            , wuffs_base__hasher_u32__func_ptrs_set_quirk = BG.getField @"wuffs_base__hasher_u32__func_ptrs_set_quirk" x0
                                            , wuffs_base__hasher_u32__func_ptrs_update_u32 = BG.getField @"wuffs_base__hasher_u32__func_ptrs_update_u32" x0
                                            }
      , BG.getField @"wuffs_base__hasher_u32__func_ptrs_update" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__empty_struct)
         ) => BG.HasField "wuffs_base__hasher_u32__func_ptrs_update" (BG.Ptr Wuffs_base__hasher_u32__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_update")

instance HasCField.HasCField Wuffs_base__hasher_u32__func_ptrs "wuffs_base__hasher_u32__func_ptrs_update" where

  type CFieldType Wuffs_base__hasher_u32__func_ptrs "wuffs_base__hasher_u32__func_ptrs_update" =
    BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__empty_struct)

  offset# = \_ -> \_ -> 24

{-| __C declaration:__ @update_u32@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6375:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO HsBindgen.Runtime.LibC.Word32)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_u32__func_ptrs_update_u32" Wuffs_base__hasher_u32__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_u32__func_ptrs { wuffs_base__hasher_u32__func_ptrs_update_u32 = y1
                                            , wuffs_base__hasher_u32__func_ptrs_checksum_u32 = BG.getField @"wuffs_base__hasher_u32__func_ptrs_checksum_u32" x0
                                            , wuffs_base__hasher_u32__func_ptrs_get_quirk = BG.getField @"wuffs_base__hasher_u32__func_ptrs_get_quirk" x0
                                            , wuffs_base__hasher_u32__func_ptrs_set_quirk = BG.getField @"wuffs_base__hasher_u32__func_ptrs_set_quirk" x0
                                            , wuffs_base__hasher_u32__func_ptrs_update = BG.getField @"wuffs_base__hasher_u32__func_ptrs_update" x0
                                            }
      , BG.getField @"wuffs_base__hasher_u32__func_ptrs_update_u32" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO HsBindgen.Runtime.LibC.Word32)
         ) => BG.HasField "wuffs_base__hasher_u32__func_ptrs_update_u32" (BG.Ptr Wuffs_base__hasher_u32__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_u32__func_ptrs_update_u32")

instance HasCField.HasCField Wuffs_base__hasher_u32__func_ptrs "wuffs_base__hasher_u32__func_ptrs_update_u32" where

  type CFieldType Wuffs_base__hasher_u32__func_ptrs "wuffs_base__hasher_u32__func_ptrs_update_u32" =
    BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO HsBindgen.Runtime.LibC.Word32)

  offset# = \_ -> \_ -> 32

{-| __C declaration:__ @struct wuffs_base__hasher_u32__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6380:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__hasher_u32

{-| __C declaration:__ @struct wuffs_base__hasher_u64__func_ptrs__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6469:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__hasher_u64__func_ptrs = Wuffs_base__hasher_u64__func_ptrs
  { wuffs_base__hasher_u64__func_ptrs_checksum_u64 :: BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word64)
    {- ^ __C declaration:__ @checksum_u64@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6470:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__hasher_u64__func_ptrs_get_quirk :: BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
    {- ^ __C declaration:__ @get_quirk@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6472:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__hasher_u64__func_ptrs_set_quirk :: BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
    {- ^ __C declaration:__ @set_quirk@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6475:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__hasher_u64__func_ptrs_update :: BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__empty_struct)
    {- ^ __C declaration:__ @update@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6479:30@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__hasher_u64__func_ptrs_update_u64 :: BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO HsBindgen.Runtime.LibC.Word64)
    {- ^ __C declaration:__ @update_u64@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6482:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__hasher_u64__func_ptrs where

  staticSizeOf = \_ -> (40 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__hasher_u64__func_ptrs where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__hasher_u64__func_ptrs
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_checksum_u64") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_get_quirk") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_set_quirk") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_update") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_update_u64") ptr0

instance Marshal.WriteRaw Wuffs_base__hasher_u64__func_ptrs where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__hasher_u64__func_ptrs
            wuffs_base__hasher_u64__func_ptrs_checksum_u642
            wuffs_base__hasher_u64__func_ptrs_get_quirk3
            wuffs_base__hasher_u64__func_ptrs_set_quirk4
            wuffs_base__hasher_u64__func_ptrs_update5
            wuffs_base__hasher_u64__func_ptrs_update_u646 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_checksum_u64") ptr0 wuffs_base__hasher_u64__func_ptrs_checksum_u642
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_get_quirk") ptr0 wuffs_base__hasher_u64__func_ptrs_get_quirk3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_set_quirk") ptr0 wuffs_base__hasher_u64__func_ptrs_set_quirk4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_update") ptr0 wuffs_base__hasher_u64__func_ptrs_update5
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_update_u64") ptr0 wuffs_base__hasher_u64__func_ptrs_update_u646

deriving via Marshal.EquivStorable Wuffs_base__hasher_u64__func_ptrs instance BG.Storable Wuffs_base__hasher_u64__func_ptrs

deriving via Struct.IsStructViaReadRaw Wuffs_base__hasher_u64__func_ptrs instance Struct.IsStruct Wuffs_base__hasher_u64__func_ptrs

{-| __C declaration:__ @checksum_u64@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6470:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_u64__func_ptrs_checksum_u64" Wuffs_base__hasher_u64__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_u64__func_ptrs { wuffs_base__hasher_u64__func_ptrs_checksum_u64 = y1
                                            , wuffs_base__hasher_u64__func_ptrs_get_quirk = BG.getField @"wuffs_base__hasher_u64__func_ptrs_get_quirk" x0
                                            , wuffs_base__hasher_u64__func_ptrs_set_quirk = BG.getField @"wuffs_base__hasher_u64__func_ptrs_set_quirk" x0
                                            , wuffs_base__hasher_u64__func_ptrs_update = BG.getField @"wuffs_base__hasher_u64__func_ptrs_update" x0
                                            , wuffs_base__hasher_u64__func_ptrs_update_u64 = BG.getField @"wuffs_base__hasher_u64__func_ptrs_update_u64" x0
                                            }
      , BG.getField @"wuffs_base__hasher_u64__func_ptrs_checksum_u64" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.HasField "wuffs_base__hasher_u64__func_ptrs_checksum_u64" (BG.Ptr Wuffs_base__hasher_u64__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_checksum_u64")

instance HasCField.HasCField Wuffs_base__hasher_u64__func_ptrs "wuffs_base__hasher_u64__func_ptrs_checksum_u64" where

  type CFieldType Wuffs_base__hasher_u64__func_ptrs "wuffs_base__hasher_u64__func_ptrs_checksum_u64" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word64)

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @get_quirk@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6472:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_u64__func_ptrs_get_quirk" Wuffs_base__hasher_u64__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_u64__func_ptrs { wuffs_base__hasher_u64__func_ptrs_get_quirk = y1
                                            , wuffs_base__hasher_u64__func_ptrs_checksum_u64 = BG.getField @"wuffs_base__hasher_u64__func_ptrs_checksum_u64" x0
                                            , wuffs_base__hasher_u64__func_ptrs_set_quirk = BG.getField @"wuffs_base__hasher_u64__func_ptrs_set_quirk" x0
                                            , wuffs_base__hasher_u64__func_ptrs_update = BG.getField @"wuffs_base__hasher_u64__func_ptrs_update" x0
                                            , wuffs_base__hasher_u64__func_ptrs_update_u64 = BG.getField @"wuffs_base__hasher_u64__func_ptrs_update_u64" x0
                                            }
      , BG.getField @"wuffs_base__hasher_u64__func_ptrs_get_quirk" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.HasField "wuffs_base__hasher_u64__func_ptrs_get_quirk" (BG.Ptr Wuffs_base__hasher_u64__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_get_quirk")

instance HasCField.HasCField Wuffs_base__hasher_u64__func_ptrs "wuffs_base__hasher_u64__func_ptrs_get_quirk" where

  type CFieldType Wuffs_base__hasher_u64__func_ptrs "wuffs_base__hasher_u64__func_ptrs_get_quirk" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @set_quirk@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6475:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_u64__func_ptrs_set_quirk" Wuffs_base__hasher_u64__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_u64__func_ptrs { wuffs_base__hasher_u64__func_ptrs_set_quirk = y1
                                            , wuffs_base__hasher_u64__func_ptrs_checksum_u64 = BG.getField @"wuffs_base__hasher_u64__func_ptrs_checksum_u64" x0
                                            , wuffs_base__hasher_u64__func_ptrs_get_quirk = BG.getField @"wuffs_base__hasher_u64__func_ptrs_get_quirk" x0
                                            , wuffs_base__hasher_u64__func_ptrs_update = BG.getField @"wuffs_base__hasher_u64__func_ptrs_update" x0
                                            , wuffs_base__hasher_u64__func_ptrs_update_u64 = BG.getField @"wuffs_base__hasher_u64__func_ptrs_update_u64" x0
                                            }
      , BG.getField @"wuffs_base__hasher_u64__func_ptrs_set_quirk" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
         ) => BG.HasField "wuffs_base__hasher_u64__func_ptrs_set_quirk" (BG.Ptr Wuffs_base__hasher_u64__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_set_quirk")

instance HasCField.HasCField Wuffs_base__hasher_u64__func_ptrs "wuffs_base__hasher_u64__func_ptrs_set_quirk" where

  type CFieldType Wuffs_base__hasher_u64__func_ptrs "wuffs_base__hasher_u64__func_ptrs_set_quirk" =
    BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @update@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6479:30@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__empty_struct)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_u64__func_ptrs_update" Wuffs_base__hasher_u64__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_u64__func_ptrs { wuffs_base__hasher_u64__func_ptrs_update = y1
                                            , wuffs_base__hasher_u64__func_ptrs_checksum_u64 = BG.getField @"wuffs_base__hasher_u64__func_ptrs_checksum_u64" x0
                                            , wuffs_base__hasher_u64__func_ptrs_get_quirk = BG.getField @"wuffs_base__hasher_u64__func_ptrs_get_quirk" x0
                                            , wuffs_base__hasher_u64__func_ptrs_set_quirk = BG.getField @"wuffs_base__hasher_u64__func_ptrs_set_quirk" x0
                                            , wuffs_base__hasher_u64__func_ptrs_update_u64 = BG.getField @"wuffs_base__hasher_u64__func_ptrs_update_u64" x0
                                            }
      , BG.getField @"wuffs_base__hasher_u64__func_ptrs_update" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__empty_struct)
         ) => BG.HasField "wuffs_base__hasher_u64__func_ptrs_update" (BG.Ptr Wuffs_base__hasher_u64__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_update")

instance HasCField.HasCField Wuffs_base__hasher_u64__func_ptrs "wuffs_base__hasher_u64__func_ptrs_update" where

  type CFieldType Wuffs_base__hasher_u64__func_ptrs "wuffs_base__hasher_u64__func_ptrs_update" =
    BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__empty_struct)

  offset# = \_ -> \_ -> 24

{-| __C declaration:__ @update_u64@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6482:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_u64__func_ptrs_update_u64" Wuffs_base__hasher_u64__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_u64__func_ptrs { wuffs_base__hasher_u64__func_ptrs_update_u64 = y1
                                            , wuffs_base__hasher_u64__func_ptrs_checksum_u64 = BG.getField @"wuffs_base__hasher_u64__func_ptrs_checksum_u64" x0
                                            , wuffs_base__hasher_u64__func_ptrs_get_quirk = BG.getField @"wuffs_base__hasher_u64__func_ptrs_get_quirk" x0
                                            , wuffs_base__hasher_u64__func_ptrs_set_quirk = BG.getField @"wuffs_base__hasher_u64__func_ptrs_set_quirk" x0
                                            , wuffs_base__hasher_u64__func_ptrs_update = BG.getField @"wuffs_base__hasher_u64__func_ptrs_update" x0
                                            }
      , BG.getField @"wuffs_base__hasher_u64__func_ptrs_update_u64" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.HasField "wuffs_base__hasher_u64__func_ptrs_update_u64" (BG.Ptr Wuffs_base__hasher_u64__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_u64__func_ptrs_update_u64")

instance HasCField.HasCField Wuffs_base__hasher_u64__func_ptrs "wuffs_base__hasher_u64__func_ptrs_update_u64" where

  type CFieldType Wuffs_base__hasher_u64__func_ptrs "wuffs_base__hasher_u64__func_ptrs_update_u64" =
    BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO HsBindgen.Runtime.LibC.Word64)

  offset# = \_ -> \_ -> 32

{-| __C declaration:__ @struct wuffs_base__hasher_u64__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6487:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__hasher_u64

{-| __C declaration:__ @struct wuffs_base__hasher_bitvec256__func_ptrs__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6576:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__hasher_bitvec256__func_ptrs = Wuffs_base__hasher_bitvec256__func_ptrs
  { wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256 :: BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__bitvec256)
    {- ^ __C declaration:__ @checksum_bitvec256@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6577:27@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__hasher_bitvec256__func_ptrs_get_quirk :: BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
    {- ^ __C declaration:__ @get_quirk@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6579:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__hasher_bitvec256__func_ptrs_set_quirk :: BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
    {- ^ __C declaration:__ @set_quirk@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6582:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__hasher_bitvec256__func_ptrs_update :: BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__empty_struct)
    {- ^ __C declaration:__ @update@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6586:30@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256 :: BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__bitvec256)
    {- ^ __C declaration:__ @update_bitvec256@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6589:27@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__hasher_bitvec256__func_ptrs where

  staticSizeOf = \_ -> (40 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__hasher_bitvec256__func_ptrs where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__hasher_bitvec256__func_ptrs
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_get_quirk") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_set_quirk") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_update") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256") ptr0

instance Marshal.WriteRaw Wuffs_base__hasher_bitvec256__func_ptrs where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__hasher_bitvec256__func_ptrs
            wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec2562
            wuffs_base__hasher_bitvec256__func_ptrs_get_quirk3
            wuffs_base__hasher_bitvec256__func_ptrs_set_quirk4
            wuffs_base__hasher_bitvec256__func_ptrs_update5
            wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec2566 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256") ptr0 wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec2562
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_get_quirk") ptr0 wuffs_base__hasher_bitvec256__func_ptrs_get_quirk3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_set_quirk") ptr0 wuffs_base__hasher_bitvec256__func_ptrs_set_quirk4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_update") ptr0 wuffs_base__hasher_bitvec256__func_ptrs_update5
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256") ptr0 wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec2566

deriving via Marshal.EquivStorable Wuffs_base__hasher_bitvec256__func_ptrs instance BG.Storable Wuffs_base__hasher_bitvec256__func_ptrs

deriving via Struct.IsStructViaReadRaw Wuffs_base__hasher_bitvec256__func_ptrs instance Struct.IsStruct Wuffs_base__hasher_bitvec256__func_ptrs

{-| __C declaration:__ @checksum_bitvec256@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6577:27@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__bitvec256)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256" Wuffs_base__hasher_bitvec256__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_bitvec256__func_ptrs { wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256 = y1
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_get_quirk = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_get_quirk" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_set_quirk = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_set_quirk" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_update = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_update" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256 = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256" x0
                                                  }
      , BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__bitvec256)
         ) => BG.HasField "wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256" (BG.Ptr Wuffs_base__hasher_bitvec256__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256")

instance HasCField.HasCField Wuffs_base__hasher_bitvec256__func_ptrs "wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256" where

  type CFieldType Wuffs_base__hasher_bitvec256__func_ptrs "wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__bitvec256)

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @get_quirk@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6579:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_bitvec256__func_ptrs_get_quirk" Wuffs_base__hasher_bitvec256__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_bitvec256__func_ptrs { wuffs_base__hasher_bitvec256__func_ptrs_get_quirk = y1
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256 = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_set_quirk = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_set_quirk" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_update = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_update" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256 = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256" x0
                                                  }
      , BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_get_quirk" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.HasField "wuffs_base__hasher_bitvec256__func_ptrs_get_quirk" (BG.Ptr Wuffs_base__hasher_bitvec256__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_get_quirk")

instance HasCField.HasCField Wuffs_base__hasher_bitvec256__func_ptrs "wuffs_base__hasher_bitvec256__func_ptrs_get_quirk" where

  type CFieldType Wuffs_base__hasher_bitvec256__func_ptrs "wuffs_base__hasher_bitvec256__func_ptrs_get_quirk" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @set_quirk@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6582:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_bitvec256__func_ptrs_set_quirk" Wuffs_base__hasher_bitvec256__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_bitvec256__func_ptrs { wuffs_base__hasher_bitvec256__func_ptrs_set_quirk = y1
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256 = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_get_quirk = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_get_quirk" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_update = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_update" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256 = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256" x0
                                                  }
      , BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_set_quirk" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
         ) => BG.HasField "wuffs_base__hasher_bitvec256__func_ptrs_set_quirk" (BG.Ptr Wuffs_base__hasher_bitvec256__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_set_quirk")

instance HasCField.HasCField Wuffs_base__hasher_bitvec256__func_ptrs "wuffs_base__hasher_bitvec256__func_ptrs_set_quirk" where

  type CFieldType Wuffs_base__hasher_bitvec256__func_ptrs "wuffs_base__hasher_bitvec256__func_ptrs_set_quirk" =
    BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @update@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6586:30@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__empty_struct)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_bitvec256__func_ptrs_update" Wuffs_base__hasher_bitvec256__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_bitvec256__func_ptrs { wuffs_base__hasher_bitvec256__func_ptrs_update = y1
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256 = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_get_quirk = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_get_quirk" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_set_quirk = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_set_quirk" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256 = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256" x0
                                                  }
      , BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_update" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__empty_struct)
         ) => BG.HasField "wuffs_base__hasher_bitvec256__func_ptrs_update" (BG.Ptr Wuffs_base__hasher_bitvec256__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_update")

instance HasCField.HasCField Wuffs_base__hasher_bitvec256__func_ptrs "wuffs_base__hasher_bitvec256__func_ptrs_update" where

  type CFieldType Wuffs_base__hasher_bitvec256__func_ptrs "wuffs_base__hasher_bitvec256__func_ptrs_update" =
    BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__empty_struct)

  offset# = \_ -> \_ -> 24

{-| __C declaration:__ @update_bitvec256@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6589:27@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__bitvec256)
         ) => BG.CompatHasField.HasField "wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256" Wuffs_base__hasher_bitvec256__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__hasher_bitvec256__func_ptrs { wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256 = y1
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256 = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_checksum_bitvec256" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_get_quirk = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_get_quirk" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_set_quirk = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_set_quirk" x0
                                                  , wuffs_base__hasher_bitvec256__func_ptrs_update = BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_update" x0
                                                  }
      , BG.getField @"wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__bitvec256)
         ) => BG.HasField "wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256" (BG.Ptr Wuffs_base__hasher_bitvec256__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256")

instance HasCField.HasCField Wuffs_base__hasher_bitvec256__func_ptrs "wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256" where

  type CFieldType Wuffs_base__hasher_bitvec256__func_ptrs "wuffs_base__hasher_bitvec256__func_ptrs_update_bitvec256" =
    BG.FunPtr (BG.Ptr BG.Void -> Wuffs_base__slice_u8 -> IO Wuffs_base__bitvec256)

  offset# = \_ -> \_ -> 32

{-| __C declaration:__ @struct wuffs_base__hasher_bitvec256__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6594:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__hasher_bitvec256

{-| __C declaration:__ @struct wuffs_base__image_decoder__func_ptrs__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6683:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__image_decoder__func_ptrs = Wuffs_base__image_decoder__func_ptrs
  { wuffs_base__image_decoder__func_ptrs_decode_frame :: BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__pixel_buffer -> BG.Ptr Wuffs_base__io_buffer -> Wuffs_base__pixel_blend -> Wuffs_base__slice_u8 -> BG.Ptr Wuffs_base__decode_frame_options -> IO Wuffs_base__status)
    {- ^ __C declaration:__ @decode_frame@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6684:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__image_decoder__func_ptrs_decode_frame_config :: BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__frame_config -> BG.Ptr Wuffs_base__io_buffer -> IO Wuffs_base__status)
    {- ^ __C declaration:__ @decode_frame_config@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6691:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__image_decoder__func_ptrs_decode_image_config :: BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__image_config -> BG.Ptr Wuffs_base__io_buffer -> IO Wuffs_base__status)
    {- ^ __C declaration:__ @decode_image_config@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6695:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__image_decoder__func_ptrs_frame_dirty_rect :: BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__rect_ie_u32)
    {- ^ __C declaration:__ @frame_dirty_rect@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6699:29@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__image_decoder__func_ptrs_get_quirk :: BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
    {- ^ __C declaration:__ @get_quirk@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6701:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__image_decoder__func_ptrs_num_animation_loops :: BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word32)
    {- ^ __C declaration:__ @num_animation_loops@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6704:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs :: BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word64)
    {- ^ __C declaration:__ @num_decoded_frame_configs@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6706:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__image_decoder__func_ptrs_num_decoded_frames :: BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word64)
    {- ^ __C declaration:__ @num_decoded_frames@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6708:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__image_decoder__func_ptrs_restart_frame :: BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word64 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
    {- ^ __C declaration:__ @restart_frame@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6710:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__image_decoder__func_ptrs_set_quirk :: BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
    {- ^ __C declaration:__ @set_quirk@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6714:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__image_decoder__func_ptrs_set_report_metadata :: BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> BG.CBool -> IO Wuffs_base__empty_struct)
    {- ^ __C declaration:__ @set_report_metadata@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6718:30@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__image_decoder__func_ptrs_tell_me_more :: BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__io_buffer -> BG.Ptr Wuffs_base__more_information -> BG.Ptr Wuffs_base__io_buffer -> IO Wuffs_base__status)
    {- ^ __C declaration:__ @tell_me_more@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6722:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__image_decoder__func_ptrs_workbuf_len :: BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__range_ii_u64)
    {- ^ __C declaration:__ @workbuf_len@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6727:30@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__image_decoder__func_ptrs where

  staticSizeOf = \_ -> (104 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__image_decoder__func_ptrs where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__image_decoder__func_ptrs
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_decode_frame") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_decode_frame_config") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_decode_image_config") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_get_quirk") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_num_animation_loops") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_restart_frame") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_set_quirk") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_set_report_metadata") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_tell_me_more") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_workbuf_len") ptr0

instance Marshal.WriteRaw Wuffs_base__image_decoder__func_ptrs where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__image_decoder__func_ptrs
            wuffs_base__image_decoder__func_ptrs_decode_frame2
            wuffs_base__image_decoder__func_ptrs_decode_frame_config3
            wuffs_base__image_decoder__func_ptrs_decode_image_config4
            wuffs_base__image_decoder__func_ptrs_frame_dirty_rect5
            wuffs_base__image_decoder__func_ptrs_get_quirk6
            wuffs_base__image_decoder__func_ptrs_num_animation_loops7
            wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs8
            wuffs_base__image_decoder__func_ptrs_num_decoded_frames9
            wuffs_base__image_decoder__func_ptrs_restart_frame10
            wuffs_base__image_decoder__func_ptrs_set_quirk11
            wuffs_base__image_decoder__func_ptrs_set_report_metadata12
            wuffs_base__image_decoder__func_ptrs_tell_me_more13
            wuffs_base__image_decoder__func_ptrs_workbuf_len14 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_decode_frame") ptr0 wuffs_base__image_decoder__func_ptrs_decode_frame2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_decode_frame_config") ptr0 wuffs_base__image_decoder__func_ptrs_decode_frame_config3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_decode_image_config") ptr0 wuffs_base__image_decoder__func_ptrs_decode_image_config4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect") ptr0 wuffs_base__image_decoder__func_ptrs_frame_dirty_rect5
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_get_quirk") ptr0 wuffs_base__image_decoder__func_ptrs_get_quirk6
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_num_animation_loops") ptr0 wuffs_base__image_decoder__func_ptrs_num_animation_loops7
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs") ptr0 wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs8
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames") ptr0 wuffs_base__image_decoder__func_ptrs_num_decoded_frames9
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_restart_frame") ptr0 wuffs_base__image_decoder__func_ptrs_restart_frame10
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_set_quirk") ptr0 wuffs_base__image_decoder__func_ptrs_set_quirk11
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_set_report_metadata") ptr0 wuffs_base__image_decoder__func_ptrs_set_report_metadata12
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_tell_me_more") ptr0 wuffs_base__image_decoder__func_ptrs_tell_me_more13
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_workbuf_len") ptr0 wuffs_base__image_decoder__func_ptrs_workbuf_len14

deriving via Marshal.EquivStorable Wuffs_base__image_decoder__func_ptrs instance BG.Storable Wuffs_base__image_decoder__func_ptrs

deriving via Struct.IsStructViaReadRaw Wuffs_base__image_decoder__func_ptrs instance Struct.IsStruct Wuffs_base__image_decoder__func_ptrs

{-| __C declaration:__ @decode_frame@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6684:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__pixel_buffer -> BG.Ptr Wuffs_base__io_buffer -> Wuffs_base__pixel_blend -> Wuffs_base__slice_u8 -> BG.Ptr Wuffs_base__decode_frame_options -> IO Wuffs_base__status)
         ) => BG.CompatHasField.HasField "wuffs_base__image_decoder__func_ptrs_decode_frame" Wuffs_base__image_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_decoder__func_ptrs { wuffs_base__image_decoder__func_ptrs_decode_frame = y1
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_image_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_image_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_frame_dirty_rect = BG.getField @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" x0
                                               , wuffs_base__image_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_animation_loops = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_animation_loops" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frames = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames" x0
                                               , wuffs_base__image_decoder__func_ptrs_restart_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_restart_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_report_metadata = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_report_metadata" x0
                                               , wuffs_base__image_decoder__func_ptrs_tell_me_more = BG.getField @"wuffs_base__image_decoder__func_ptrs_tell_me_more" x0
                                               , wuffs_base__image_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__image_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__pixel_buffer -> BG.Ptr Wuffs_base__io_buffer -> Wuffs_base__pixel_blend -> Wuffs_base__slice_u8 -> BG.Ptr Wuffs_base__decode_frame_options -> IO Wuffs_base__status)
         ) => BG.HasField "wuffs_base__image_decoder__func_ptrs_decode_frame" (BG.Ptr Wuffs_base__image_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_decode_frame")

instance HasCField.HasCField Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_decode_frame" where

  type CFieldType Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_decode_frame" =
    BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__pixel_buffer -> BG.Ptr Wuffs_base__io_buffer -> Wuffs_base__pixel_blend -> Wuffs_base__slice_u8 -> BG.Ptr Wuffs_base__decode_frame_options -> IO Wuffs_base__status)

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @decode_frame_config@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6691:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__frame_config -> BG.Ptr Wuffs_base__io_buffer -> IO Wuffs_base__status)
         ) => BG.CompatHasField.HasField "wuffs_base__image_decoder__func_ptrs_decode_frame_config" Wuffs_base__image_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_decoder__func_ptrs { wuffs_base__image_decoder__func_ptrs_decode_frame_config = y1
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_image_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_image_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_frame_dirty_rect = BG.getField @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" x0
                                               , wuffs_base__image_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_animation_loops = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_animation_loops" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frames = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames" x0
                                               , wuffs_base__image_decoder__func_ptrs_restart_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_restart_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_report_metadata = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_report_metadata" x0
                                               , wuffs_base__image_decoder__func_ptrs_tell_me_more = BG.getField @"wuffs_base__image_decoder__func_ptrs_tell_me_more" x0
                                               , wuffs_base__image_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__image_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame_config" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__frame_config -> BG.Ptr Wuffs_base__io_buffer -> IO Wuffs_base__status)
         ) => BG.HasField "wuffs_base__image_decoder__func_ptrs_decode_frame_config" (BG.Ptr Wuffs_base__image_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_decode_frame_config")

instance HasCField.HasCField Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_decode_frame_config" where

  type CFieldType Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_decode_frame_config" =
    BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__frame_config -> BG.Ptr Wuffs_base__io_buffer -> IO Wuffs_base__status)

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @decode_image_config@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6695:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__image_config -> BG.Ptr Wuffs_base__io_buffer -> IO Wuffs_base__status)
         ) => BG.CompatHasField.HasField "wuffs_base__image_decoder__func_ptrs_decode_image_config" Wuffs_base__image_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_decoder__func_ptrs { wuffs_base__image_decoder__func_ptrs_decode_image_config = y1
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_frame_dirty_rect = BG.getField @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" x0
                                               , wuffs_base__image_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_animation_loops = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_animation_loops" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frames = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames" x0
                                               , wuffs_base__image_decoder__func_ptrs_restart_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_restart_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_report_metadata = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_report_metadata" x0
                                               , wuffs_base__image_decoder__func_ptrs_tell_me_more = BG.getField @"wuffs_base__image_decoder__func_ptrs_tell_me_more" x0
                                               , wuffs_base__image_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__image_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_image_config" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__image_config -> BG.Ptr Wuffs_base__io_buffer -> IO Wuffs_base__status)
         ) => BG.HasField "wuffs_base__image_decoder__func_ptrs_decode_image_config" (BG.Ptr Wuffs_base__image_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_decode_image_config")

instance HasCField.HasCField Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_decode_image_config" where

  type CFieldType Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_decode_image_config" =
    BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__image_config -> BG.Ptr Wuffs_base__io_buffer -> IO Wuffs_base__status)

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @frame_dirty_rect@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6699:29@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__rect_ie_u32)
         ) => BG.CompatHasField.HasField "wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" Wuffs_base__image_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_decoder__func_ptrs { wuffs_base__image_decoder__func_ptrs_frame_dirty_rect = y1
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_image_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_image_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_animation_loops = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_animation_loops" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frames = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames" x0
                                               , wuffs_base__image_decoder__func_ptrs_restart_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_restart_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_report_metadata = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_report_metadata" x0
                                               , wuffs_base__image_decoder__func_ptrs_tell_me_more = BG.getField @"wuffs_base__image_decoder__func_ptrs_tell_me_more" x0
                                               , wuffs_base__image_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__image_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__rect_ie_u32)
         ) => BG.HasField "wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" (BG.Ptr Wuffs_base__image_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect")

instance HasCField.HasCField Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" where

  type CFieldType Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__rect_ie_u32)

  offset# = \_ -> \_ -> 24

{-| __C declaration:__ @get_quirk@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6701:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.CompatHasField.HasField "wuffs_base__image_decoder__func_ptrs_get_quirk" Wuffs_base__image_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_decoder__func_ptrs { wuffs_base__image_decoder__func_ptrs_get_quirk = y1
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_image_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_image_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_frame_dirty_rect = BG.getField @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_animation_loops = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_animation_loops" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frames = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames" x0
                                               , wuffs_base__image_decoder__func_ptrs_restart_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_restart_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_report_metadata = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_report_metadata" x0
                                               , wuffs_base__image_decoder__func_ptrs_tell_me_more = BG.getField @"wuffs_base__image_decoder__func_ptrs_tell_me_more" x0
                                               , wuffs_base__image_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__image_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__image_decoder__func_ptrs_get_quirk" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.HasField "wuffs_base__image_decoder__func_ptrs_get_quirk" (BG.Ptr Wuffs_base__image_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_get_quirk")

instance HasCField.HasCField Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_get_quirk" where

  type CFieldType Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_get_quirk" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)

  offset# = \_ -> \_ -> 32

{-| __C declaration:__ @num_animation_loops@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6704:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word32)
         ) => BG.CompatHasField.HasField "wuffs_base__image_decoder__func_ptrs_num_animation_loops" Wuffs_base__image_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_decoder__func_ptrs { wuffs_base__image_decoder__func_ptrs_num_animation_loops = y1
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_image_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_image_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_frame_dirty_rect = BG.getField @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" x0
                                               , wuffs_base__image_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frames = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames" x0
                                               , wuffs_base__image_decoder__func_ptrs_restart_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_restart_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_report_metadata = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_report_metadata" x0
                                               , wuffs_base__image_decoder__func_ptrs_tell_me_more = BG.getField @"wuffs_base__image_decoder__func_ptrs_tell_me_more" x0
                                               , wuffs_base__image_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__image_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__image_decoder__func_ptrs_num_animation_loops" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word32)
         ) => BG.HasField "wuffs_base__image_decoder__func_ptrs_num_animation_loops" (BG.Ptr Wuffs_base__image_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_num_animation_loops")

instance HasCField.HasCField Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_num_animation_loops" where

  type CFieldType Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_num_animation_loops" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word32)

  offset# = \_ -> \_ -> 40

{-| __C declaration:__ @num_decoded_frame_configs@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6706:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.CompatHasField.HasField "wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" Wuffs_base__image_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_decoder__func_ptrs { wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs = y1
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_image_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_image_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_frame_dirty_rect = BG.getField @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" x0
                                               , wuffs_base__image_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_animation_loops = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_animation_loops" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frames = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames" x0
                                               , wuffs_base__image_decoder__func_ptrs_restart_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_restart_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_report_metadata = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_report_metadata" x0
                                               , wuffs_base__image_decoder__func_ptrs_tell_me_more = BG.getField @"wuffs_base__image_decoder__func_ptrs_tell_me_more" x0
                                               , wuffs_base__image_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__image_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.HasField "wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" (BG.Ptr Wuffs_base__image_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs")

instance HasCField.HasCField Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" where

  type CFieldType Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word64)

  offset# = \_ -> \_ -> 48

{-| __C declaration:__ @num_decoded_frames@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6708:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.CompatHasField.HasField "wuffs_base__image_decoder__func_ptrs_num_decoded_frames" Wuffs_base__image_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_decoder__func_ptrs { wuffs_base__image_decoder__func_ptrs_num_decoded_frames = y1
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_image_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_image_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_frame_dirty_rect = BG.getField @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" x0
                                               , wuffs_base__image_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_animation_loops = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_animation_loops" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" x0
                                               , wuffs_base__image_decoder__func_ptrs_restart_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_restart_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_report_metadata = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_report_metadata" x0
                                               , wuffs_base__image_decoder__func_ptrs_tell_me_more = BG.getField @"wuffs_base__image_decoder__func_ptrs_tell_me_more" x0
                                               , wuffs_base__image_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__image_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.HasField "wuffs_base__image_decoder__func_ptrs_num_decoded_frames" (BG.Ptr Wuffs_base__image_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames")

instance HasCField.HasCField Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_num_decoded_frames" where

  type CFieldType Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_num_decoded_frames" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> IO HsBindgen.Runtime.LibC.Word64)

  offset# = \_ -> \_ -> 56

{-| __C declaration:__ @restart_frame@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6710:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word64 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
         ) => BG.CompatHasField.HasField "wuffs_base__image_decoder__func_ptrs_restart_frame" Wuffs_base__image_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_decoder__func_ptrs { wuffs_base__image_decoder__func_ptrs_restart_frame = y1
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_image_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_image_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_frame_dirty_rect = BG.getField @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" x0
                                               , wuffs_base__image_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_animation_loops = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_animation_loops" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frames = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_report_metadata = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_report_metadata" x0
                                               , wuffs_base__image_decoder__func_ptrs_tell_me_more = BG.getField @"wuffs_base__image_decoder__func_ptrs_tell_me_more" x0
                                               , wuffs_base__image_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__image_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__image_decoder__func_ptrs_restart_frame" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word64 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
         ) => BG.HasField "wuffs_base__image_decoder__func_ptrs_restart_frame" (BG.Ptr Wuffs_base__image_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_restart_frame")

instance HasCField.HasCField Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_restart_frame" where

  type CFieldType Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_restart_frame" =
    BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word64 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)

  offset# = \_ -> \_ -> 64

{-| __C declaration:__ @set_quirk@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6714:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
         ) => BG.CompatHasField.HasField "wuffs_base__image_decoder__func_ptrs_set_quirk" Wuffs_base__image_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_decoder__func_ptrs { wuffs_base__image_decoder__func_ptrs_set_quirk = y1
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_image_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_image_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_frame_dirty_rect = BG.getField @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" x0
                                               , wuffs_base__image_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_animation_loops = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_animation_loops" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frames = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames" x0
                                               , wuffs_base__image_decoder__func_ptrs_restart_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_restart_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_report_metadata = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_report_metadata" x0
                                               , wuffs_base__image_decoder__func_ptrs_tell_me_more = BG.getField @"wuffs_base__image_decoder__func_ptrs_tell_me_more" x0
                                               , wuffs_base__image_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__image_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__image_decoder__func_ptrs_set_quirk" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
         ) => BG.HasField "wuffs_base__image_decoder__func_ptrs_set_quirk" (BG.Ptr Wuffs_base__image_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_set_quirk")

instance HasCField.HasCField Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_set_quirk" where

  type CFieldType Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_set_quirk" =
    BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)

  offset# = \_ -> \_ -> 72

{-| __C declaration:__ @set_report_metadata@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6718:30@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> BG.CBool -> IO Wuffs_base__empty_struct)
         ) => BG.CompatHasField.HasField "wuffs_base__image_decoder__func_ptrs_set_report_metadata" Wuffs_base__image_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_decoder__func_ptrs { wuffs_base__image_decoder__func_ptrs_set_report_metadata = y1
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_image_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_image_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_frame_dirty_rect = BG.getField @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" x0
                                               , wuffs_base__image_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_animation_loops = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_animation_loops" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frames = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames" x0
                                               , wuffs_base__image_decoder__func_ptrs_restart_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_restart_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_tell_me_more = BG.getField @"wuffs_base__image_decoder__func_ptrs_tell_me_more" x0
                                               , wuffs_base__image_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__image_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__image_decoder__func_ptrs_set_report_metadata" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> BG.CBool -> IO Wuffs_base__empty_struct)
         ) => BG.HasField "wuffs_base__image_decoder__func_ptrs_set_report_metadata" (BG.Ptr Wuffs_base__image_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_set_report_metadata")

instance HasCField.HasCField Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_set_report_metadata" where

  type CFieldType Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_set_report_metadata" =
    BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> BG.CBool -> IO Wuffs_base__empty_struct)

  offset# = \_ -> \_ -> 80

{-| __C declaration:__ @tell_me_more@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6722:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__io_buffer -> BG.Ptr Wuffs_base__more_information -> BG.Ptr Wuffs_base__io_buffer -> IO Wuffs_base__status)
         ) => BG.CompatHasField.HasField "wuffs_base__image_decoder__func_ptrs_tell_me_more" Wuffs_base__image_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_decoder__func_ptrs { wuffs_base__image_decoder__func_ptrs_tell_me_more = y1
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_image_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_image_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_frame_dirty_rect = BG.getField @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" x0
                                               , wuffs_base__image_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_animation_loops = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_animation_loops" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frames = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames" x0
                                               , wuffs_base__image_decoder__func_ptrs_restart_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_restart_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_report_metadata = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_report_metadata" x0
                                               , wuffs_base__image_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__image_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__image_decoder__func_ptrs_tell_me_more" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__io_buffer -> BG.Ptr Wuffs_base__more_information -> BG.Ptr Wuffs_base__io_buffer -> IO Wuffs_base__status)
         ) => BG.HasField "wuffs_base__image_decoder__func_ptrs_tell_me_more" (BG.Ptr Wuffs_base__image_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_tell_me_more")

instance HasCField.HasCField Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_tell_me_more" where

  type CFieldType Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_tell_me_more" =
    BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__io_buffer -> BG.Ptr Wuffs_base__more_information -> BG.Ptr Wuffs_base__io_buffer -> IO Wuffs_base__status)

  offset# = \_ -> \_ -> 88

{-| __C declaration:__ @workbuf_len@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6727:30@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__range_ii_u64)
         ) => BG.CompatHasField.HasField "wuffs_base__image_decoder__func_ptrs_workbuf_len" Wuffs_base__image_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__image_decoder__func_ptrs { wuffs_base__image_decoder__func_ptrs_workbuf_len = y1
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_frame_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_frame_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_decode_image_config = BG.getField @"wuffs_base__image_decoder__func_ptrs_decode_image_config" x0
                                               , wuffs_base__image_decoder__func_ptrs_frame_dirty_rect = BG.getField @"wuffs_base__image_decoder__func_ptrs_frame_dirty_rect" x0
                                               , wuffs_base__image_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_animation_loops = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_animation_loops" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frame_configs" x0
                                               , wuffs_base__image_decoder__func_ptrs_num_decoded_frames = BG.getField @"wuffs_base__image_decoder__func_ptrs_num_decoded_frames" x0
                                               , wuffs_base__image_decoder__func_ptrs_restart_frame = BG.getField @"wuffs_base__image_decoder__func_ptrs_restart_frame" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_quirk" x0
                                               , wuffs_base__image_decoder__func_ptrs_set_report_metadata = BG.getField @"wuffs_base__image_decoder__func_ptrs_set_report_metadata" x0
                                               , wuffs_base__image_decoder__func_ptrs_tell_me_more = BG.getField @"wuffs_base__image_decoder__func_ptrs_tell_me_more" x0
                                               }
      , BG.getField @"wuffs_base__image_decoder__func_ptrs_workbuf_len" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__range_ii_u64)
         ) => BG.HasField "wuffs_base__image_decoder__func_ptrs_workbuf_len" (BG.Ptr Wuffs_base__image_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__image_decoder__func_ptrs_workbuf_len")

instance HasCField.HasCField Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_workbuf_len" where

  type CFieldType Wuffs_base__image_decoder__func_ptrs "wuffs_base__image_decoder__func_ptrs_workbuf_len" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__range_ii_u64)

  offset# = \_ -> \_ -> 96

{-| __C declaration:__ @struct wuffs_base__image_decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6731:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__image_decoder

{-| __C declaration:__ @struct wuffs_base__io_transformer__func_ptrs__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6932:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__io_transformer__func_ptrs = Wuffs_base__io_transformer__func_ptrs
  { wuffs_base__io_transformer__func_ptrs_dst_history_retain_length :: BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__optional_u63)
    {- ^ __C declaration:__ @dst_history_retain_length@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6933:30@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__io_transformer__func_ptrs_get_quirk :: BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
    {- ^ __C declaration:__ @get_quirk@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6935:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__io_transformer__func_ptrs_set_quirk :: BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
    {- ^ __C declaration:__ @set_quirk@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6938:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__io_transformer__func_ptrs_transform_io :: BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__io_buffer -> BG.Ptr Wuffs_base__io_buffer -> Wuffs_base__slice_u8 -> IO Wuffs_base__status)
    {- ^ __C declaration:__ @transform_io@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6942:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__io_transformer__func_ptrs_workbuf_len :: BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__range_ii_u64)
    {- ^ __C declaration:__ @workbuf_len@

         __defined at:__ @wuffs\/wuffs-v0.4.c 6947:30@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__io_transformer__func_ptrs where

  staticSizeOf = \_ -> (40 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__io_transformer__func_ptrs where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__io_transformer__func_ptrs
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_dst_history_retain_length") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_get_quirk") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_set_quirk") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_transform_io") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_workbuf_len") ptr0

instance Marshal.WriteRaw Wuffs_base__io_transformer__func_ptrs where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__io_transformer__func_ptrs
            wuffs_base__io_transformer__func_ptrs_dst_history_retain_length2
            wuffs_base__io_transformer__func_ptrs_get_quirk3
            wuffs_base__io_transformer__func_ptrs_set_quirk4
            wuffs_base__io_transformer__func_ptrs_transform_io5
            wuffs_base__io_transformer__func_ptrs_workbuf_len6 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_dst_history_retain_length") ptr0 wuffs_base__io_transformer__func_ptrs_dst_history_retain_length2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_get_quirk") ptr0 wuffs_base__io_transformer__func_ptrs_get_quirk3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_set_quirk") ptr0 wuffs_base__io_transformer__func_ptrs_set_quirk4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_transform_io") ptr0 wuffs_base__io_transformer__func_ptrs_transform_io5
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_workbuf_len") ptr0 wuffs_base__io_transformer__func_ptrs_workbuf_len6

deriving via Marshal.EquivStorable Wuffs_base__io_transformer__func_ptrs instance BG.Storable Wuffs_base__io_transformer__func_ptrs

deriving via Struct.IsStructViaReadRaw Wuffs_base__io_transformer__func_ptrs instance Struct.IsStruct Wuffs_base__io_transformer__func_ptrs

{-| __C declaration:__ @dst_history_retain_length@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6933:30@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__optional_u63)
         ) => BG.CompatHasField.HasField "wuffs_base__io_transformer__func_ptrs_dst_history_retain_length" Wuffs_base__io_transformer__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__io_transformer__func_ptrs { wuffs_base__io_transformer__func_ptrs_dst_history_retain_length = y1
                                                , wuffs_base__io_transformer__func_ptrs_get_quirk = BG.getField @"wuffs_base__io_transformer__func_ptrs_get_quirk" x0
                                                , wuffs_base__io_transformer__func_ptrs_set_quirk = BG.getField @"wuffs_base__io_transformer__func_ptrs_set_quirk" x0
                                                , wuffs_base__io_transformer__func_ptrs_transform_io = BG.getField @"wuffs_base__io_transformer__func_ptrs_transform_io" x0
                                                , wuffs_base__io_transformer__func_ptrs_workbuf_len = BG.getField @"wuffs_base__io_transformer__func_ptrs_workbuf_len" x0
                                                }
      , BG.getField @"wuffs_base__io_transformer__func_ptrs_dst_history_retain_length" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__optional_u63)
         ) => BG.HasField "wuffs_base__io_transformer__func_ptrs_dst_history_retain_length" (BG.Ptr Wuffs_base__io_transformer__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_dst_history_retain_length")

instance HasCField.HasCField Wuffs_base__io_transformer__func_ptrs "wuffs_base__io_transformer__func_ptrs_dst_history_retain_length" where

  type CFieldType Wuffs_base__io_transformer__func_ptrs "wuffs_base__io_transformer__func_ptrs_dst_history_retain_length" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__optional_u63)

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @get_quirk@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6935:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.CompatHasField.HasField "wuffs_base__io_transformer__func_ptrs_get_quirk" Wuffs_base__io_transformer__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__io_transformer__func_ptrs { wuffs_base__io_transformer__func_ptrs_get_quirk = y1
                                                , wuffs_base__io_transformer__func_ptrs_dst_history_retain_length = BG.getField @"wuffs_base__io_transformer__func_ptrs_dst_history_retain_length" x0
                                                , wuffs_base__io_transformer__func_ptrs_set_quirk = BG.getField @"wuffs_base__io_transformer__func_ptrs_set_quirk" x0
                                                , wuffs_base__io_transformer__func_ptrs_transform_io = BG.getField @"wuffs_base__io_transformer__func_ptrs_transform_io" x0
                                                , wuffs_base__io_transformer__func_ptrs_workbuf_len = BG.getField @"wuffs_base__io_transformer__func_ptrs_workbuf_len" x0
                                                }
      , BG.getField @"wuffs_base__io_transformer__func_ptrs_get_quirk" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.HasField "wuffs_base__io_transformer__func_ptrs_get_quirk" (BG.Ptr Wuffs_base__io_transformer__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_get_quirk")

instance HasCField.HasCField Wuffs_base__io_transformer__func_ptrs "wuffs_base__io_transformer__func_ptrs_get_quirk" where

  type CFieldType Wuffs_base__io_transformer__func_ptrs "wuffs_base__io_transformer__func_ptrs_get_quirk" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @set_quirk@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6938:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
         ) => BG.CompatHasField.HasField "wuffs_base__io_transformer__func_ptrs_set_quirk" Wuffs_base__io_transformer__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__io_transformer__func_ptrs { wuffs_base__io_transformer__func_ptrs_set_quirk = y1
                                                , wuffs_base__io_transformer__func_ptrs_dst_history_retain_length = BG.getField @"wuffs_base__io_transformer__func_ptrs_dst_history_retain_length" x0
                                                , wuffs_base__io_transformer__func_ptrs_get_quirk = BG.getField @"wuffs_base__io_transformer__func_ptrs_get_quirk" x0
                                                , wuffs_base__io_transformer__func_ptrs_transform_io = BG.getField @"wuffs_base__io_transformer__func_ptrs_transform_io" x0
                                                , wuffs_base__io_transformer__func_ptrs_workbuf_len = BG.getField @"wuffs_base__io_transformer__func_ptrs_workbuf_len" x0
                                                }
      , BG.getField @"wuffs_base__io_transformer__func_ptrs_set_quirk" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
         ) => BG.HasField "wuffs_base__io_transformer__func_ptrs_set_quirk" (BG.Ptr Wuffs_base__io_transformer__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_set_quirk")

instance HasCField.HasCField Wuffs_base__io_transformer__func_ptrs "wuffs_base__io_transformer__func_ptrs_set_quirk" where

  type CFieldType Wuffs_base__io_transformer__func_ptrs "wuffs_base__io_transformer__func_ptrs_set_quirk" =
    BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @transform_io@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6942:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__io_buffer -> BG.Ptr Wuffs_base__io_buffer -> Wuffs_base__slice_u8 -> IO Wuffs_base__status)
         ) => BG.CompatHasField.HasField "wuffs_base__io_transformer__func_ptrs_transform_io" Wuffs_base__io_transformer__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__io_transformer__func_ptrs { wuffs_base__io_transformer__func_ptrs_transform_io = y1
                                                , wuffs_base__io_transformer__func_ptrs_dst_history_retain_length = BG.getField @"wuffs_base__io_transformer__func_ptrs_dst_history_retain_length" x0
                                                , wuffs_base__io_transformer__func_ptrs_get_quirk = BG.getField @"wuffs_base__io_transformer__func_ptrs_get_quirk" x0
                                                , wuffs_base__io_transformer__func_ptrs_set_quirk = BG.getField @"wuffs_base__io_transformer__func_ptrs_set_quirk" x0
                                                , wuffs_base__io_transformer__func_ptrs_workbuf_len = BG.getField @"wuffs_base__io_transformer__func_ptrs_workbuf_len" x0
                                                }
      , BG.getField @"wuffs_base__io_transformer__func_ptrs_transform_io" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__io_buffer -> BG.Ptr Wuffs_base__io_buffer -> Wuffs_base__slice_u8 -> IO Wuffs_base__status)
         ) => BG.HasField "wuffs_base__io_transformer__func_ptrs_transform_io" (BG.Ptr Wuffs_base__io_transformer__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_transform_io")

instance HasCField.HasCField Wuffs_base__io_transformer__func_ptrs "wuffs_base__io_transformer__func_ptrs_transform_io" where

  type CFieldType Wuffs_base__io_transformer__func_ptrs "wuffs_base__io_transformer__func_ptrs_transform_io" =
    BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__io_buffer -> BG.Ptr Wuffs_base__io_buffer -> Wuffs_base__slice_u8 -> IO Wuffs_base__status)

  offset# = \_ -> \_ -> 24

{-| __C declaration:__ @workbuf_len@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6947:30@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__range_ii_u64)
         ) => BG.CompatHasField.HasField "wuffs_base__io_transformer__func_ptrs_workbuf_len" Wuffs_base__io_transformer__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__io_transformer__func_ptrs { wuffs_base__io_transformer__func_ptrs_workbuf_len = y1
                                                , wuffs_base__io_transformer__func_ptrs_dst_history_retain_length = BG.getField @"wuffs_base__io_transformer__func_ptrs_dst_history_retain_length" x0
                                                , wuffs_base__io_transformer__func_ptrs_get_quirk = BG.getField @"wuffs_base__io_transformer__func_ptrs_get_quirk" x0
                                                , wuffs_base__io_transformer__func_ptrs_set_quirk = BG.getField @"wuffs_base__io_transformer__func_ptrs_set_quirk" x0
                                                , wuffs_base__io_transformer__func_ptrs_transform_io = BG.getField @"wuffs_base__io_transformer__func_ptrs_transform_io" x0
                                                }
      , BG.getField @"wuffs_base__io_transformer__func_ptrs_workbuf_len" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__range_ii_u64)
         ) => BG.HasField "wuffs_base__io_transformer__func_ptrs_workbuf_len" (BG.Ptr Wuffs_base__io_transformer__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__io_transformer__func_ptrs_workbuf_len")

instance HasCField.HasCField Wuffs_base__io_transformer__func_ptrs "wuffs_base__io_transformer__func_ptrs_workbuf_len" where

  type CFieldType Wuffs_base__io_transformer__func_ptrs "wuffs_base__io_transformer__func_ptrs_workbuf_len" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__range_ii_u64)

  offset# = \_ -> \_ -> 32

{-| __C declaration:__ @struct wuffs_base__io_transformer__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6951:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__io_transformer

{-| __C declaration:__ @struct wuffs_base__token_decoder__func_ptrs__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7041:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__token_decoder__func_ptrs = Wuffs_base__token_decoder__func_ptrs
  { wuffs_base__token_decoder__func_ptrs_decode_tokens :: BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__token_buffer -> BG.Ptr Wuffs_base__io_buffer -> Wuffs_base__slice_u8 -> IO Wuffs_base__status)
    {- ^ __C declaration:__ @decode_tokens@

         __defined at:__ @wuffs\/wuffs-v0.4.c 7042:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__token_decoder__func_ptrs_get_quirk :: BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
    {- ^ __C declaration:__ @get_quirk@

         __defined at:__ @wuffs\/wuffs-v0.4.c 7047:14@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__token_decoder__func_ptrs_set_quirk :: BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
    {- ^ __C declaration:__ @set_quirk@

         __defined at:__ @wuffs\/wuffs-v0.4.c 7050:24@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  , wuffs_base__token_decoder__func_ptrs_workbuf_len :: BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__range_ii_u64)
    {- ^ __C declaration:__ @workbuf_len@

         __defined at:__ @wuffs\/wuffs-v0.4.c 7054:30@

         __exported by:__ @wuffs\/wuffs-v0.4.c@
    -}
  }
  deriving stock (Eq, BG.Generic, Show)

instance Marshal.StaticSize Wuffs_base__token_decoder__func_ptrs where

  staticSizeOf = \_ -> (32 :: Int)

  staticAlignment = \_ -> (8 :: Int)

instance Marshal.ReadRaw Wuffs_base__token_decoder__func_ptrs where

  readRaw =
    \ptr0 ->
          pure Wuffs_base__token_decoder__func_ptrs
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__token_decoder__func_ptrs_decode_tokens") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__token_decoder__func_ptrs_get_quirk") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__token_decoder__func_ptrs_set_quirk") ptr0
      <*> HasCField.readRaw (BG.Proxy @"wuffs_base__token_decoder__func_ptrs_workbuf_len") ptr0

instance Marshal.WriteRaw Wuffs_base__token_decoder__func_ptrs where

  writeRaw =
    \ptr0 ->
      \s1 ->
        case s1 of
          Wuffs_base__token_decoder__func_ptrs
            wuffs_base__token_decoder__func_ptrs_decode_tokens2
            wuffs_base__token_decoder__func_ptrs_get_quirk3
            wuffs_base__token_decoder__func_ptrs_set_quirk4
            wuffs_base__token_decoder__func_ptrs_workbuf_len5 ->
                 HasCField.writeRaw (BG.Proxy @"wuffs_base__token_decoder__func_ptrs_decode_tokens") ptr0 wuffs_base__token_decoder__func_ptrs_decode_tokens2
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__token_decoder__func_ptrs_get_quirk") ptr0 wuffs_base__token_decoder__func_ptrs_get_quirk3
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__token_decoder__func_ptrs_set_quirk") ptr0 wuffs_base__token_decoder__func_ptrs_set_quirk4
              >> HasCField.writeRaw (BG.Proxy @"wuffs_base__token_decoder__func_ptrs_workbuf_len") ptr0 wuffs_base__token_decoder__func_ptrs_workbuf_len5

deriving via Marshal.EquivStorable Wuffs_base__token_decoder__func_ptrs instance BG.Storable Wuffs_base__token_decoder__func_ptrs

deriving via Struct.IsStructViaReadRaw Wuffs_base__token_decoder__func_ptrs instance Struct.IsStruct Wuffs_base__token_decoder__func_ptrs

{-| __C declaration:__ @decode_tokens@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7042:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__token_buffer -> BG.Ptr Wuffs_base__io_buffer -> Wuffs_base__slice_u8 -> IO Wuffs_base__status)
         ) => BG.CompatHasField.HasField "wuffs_base__token_decoder__func_ptrs_decode_tokens" Wuffs_base__token_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__token_decoder__func_ptrs { wuffs_base__token_decoder__func_ptrs_decode_tokens = y1
                                               , wuffs_base__token_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__token_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__token_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__token_decoder__func_ptrs_set_quirk" x0
                                               , wuffs_base__token_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__token_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__token_decoder__func_ptrs_decode_tokens" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__token_buffer -> BG.Ptr Wuffs_base__io_buffer -> Wuffs_base__slice_u8 -> IO Wuffs_base__status)
         ) => BG.HasField "wuffs_base__token_decoder__func_ptrs_decode_tokens" (BG.Ptr Wuffs_base__token_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__token_decoder__func_ptrs_decode_tokens")

instance HasCField.HasCField Wuffs_base__token_decoder__func_ptrs "wuffs_base__token_decoder__func_ptrs_decode_tokens" where

  type CFieldType Wuffs_base__token_decoder__func_ptrs "wuffs_base__token_decoder__func_ptrs_decode_tokens" =
    BG.FunPtr (BG.Ptr BG.Void -> BG.Ptr Wuffs_base__token_buffer -> BG.Ptr Wuffs_base__io_buffer -> Wuffs_base__slice_u8 -> IO Wuffs_base__status)

  offset# = \_ -> \_ -> 0

{-| __C declaration:__ @get_quirk@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7047:14@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.CompatHasField.HasField "wuffs_base__token_decoder__func_ptrs_get_quirk" Wuffs_base__token_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__token_decoder__func_ptrs { wuffs_base__token_decoder__func_ptrs_get_quirk = y1
                                               , wuffs_base__token_decoder__func_ptrs_decode_tokens = BG.getField @"wuffs_base__token_decoder__func_ptrs_decode_tokens" x0
                                               , wuffs_base__token_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__token_decoder__func_ptrs_set_quirk" x0
                                               , wuffs_base__token_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__token_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__token_decoder__func_ptrs_get_quirk" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)
         ) => BG.HasField "wuffs_base__token_decoder__func_ptrs_get_quirk" (BG.Ptr Wuffs_base__token_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__token_decoder__func_ptrs_get_quirk")

instance HasCField.HasCField Wuffs_base__token_decoder__func_ptrs "wuffs_base__token_decoder__func_ptrs_get_quirk" where

  type CFieldType Wuffs_base__token_decoder__func_ptrs "wuffs_base__token_decoder__func_ptrs_get_quirk" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> HsBindgen.Runtime.LibC.Word32 -> IO HsBindgen.Runtime.LibC.Word64)

  offset# = \_ -> \_ -> 8

{-| __C declaration:__ @set_quirk@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7050:24@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
         ) => BG.CompatHasField.HasField "wuffs_base__token_decoder__func_ptrs_set_quirk" Wuffs_base__token_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__token_decoder__func_ptrs { wuffs_base__token_decoder__func_ptrs_set_quirk = y1
                                               , wuffs_base__token_decoder__func_ptrs_decode_tokens = BG.getField @"wuffs_base__token_decoder__func_ptrs_decode_tokens" x0
                                               , wuffs_base__token_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__token_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__token_decoder__func_ptrs_workbuf_len = BG.getField @"wuffs_base__token_decoder__func_ptrs_workbuf_len" x0
                                               }
      , BG.getField @"wuffs_base__token_decoder__func_ptrs_set_quirk" x0
      )

instance ( ty ~ BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)
         ) => BG.HasField "wuffs_base__token_decoder__func_ptrs_set_quirk" (BG.Ptr Wuffs_base__token_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__token_decoder__func_ptrs_set_quirk")

instance HasCField.HasCField Wuffs_base__token_decoder__func_ptrs "wuffs_base__token_decoder__func_ptrs_set_quirk" where

  type CFieldType Wuffs_base__token_decoder__func_ptrs "wuffs_base__token_decoder__func_ptrs_set_quirk" =
    BG.FunPtr (BG.Ptr BG.Void -> HsBindgen.Runtime.LibC.Word32 -> HsBindgen.Runtime.LibC.Word64 -> IO Wuffs_base__status)

  offset# = \_ -> \_ -> 16

{-| __C declaration:__ @workbuf_len@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7054:30@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__range_ii_u64)
         ) => BG.CompatHasField.HasField "wuffs_base__token_decoder__func_ptrs_workbuf_len" Wuffs_base__token_decoder__func_ptrs ty where

  hasField =
    \x0 ->
      ( \y1 ->
          Wuffs_base__token_decoder__func_ptrs { wuffs_base__token_decoder__func_ptrs_workbuf_len = y1
                                               , wuffs_base__token_decoder__func_ptrs_decode_tokens = BG.getField @"wuffs_base__token_decoder__func_ptrs_decode_tokens" x0
                                               , wuffs_base__token_decoder__func_ptrs_get_quirk = BG.getField @"wuffs_base__token_decoder__func_ptrs_get_quirk" x0
                                               , wuffs_base__token_decoder__func_ptrs_set_quirk = BG.getField @"wuffs_base__token_decoder__func_ptrs_set_quirk" x0
                                               }
      , BG.getField @"wuffs_base__token_decoder__func_ptrs_workbuf_len" x0
      )

instance ( ty ~ BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__range_ii_u64)
         ) => BG.HasField "wuffs_base__token_decoder__func_ptrs_workbuf_len" (BG.Ptr Wuffs_base__token_decoder__func_ptrs) (BG.Ptr ty) where

  getField =
    HasCField.fromPtr (BG.Proxy @"wuffs_base__token_decoder__func_ptrs_workbuf_len")

instance HasCField.HasCField Wuffs_base__token_decoder__func_ptrs "wuffs_base__token_decoder__func_ptrs_workbuf_len" where

  type CFieldType Wuffs_base__token_decoder__func_ptrs "wuffs_base__token_decoder__func_ptrs_workbuf_len" =
    BG.FunPtr (PtrConst.PtrConst BG.Void -> IO Wuffs_base__range_ii_u64)

  offset# = \_ -> \_ -> 24

{-| __C declaration:__ @struct wuffs_base__token_decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7058:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_base__token_decoder

{-| __C declaration:__ @struct wuffs_adler32__hasher__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7148:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_adler32__hasher

{-| __C declaration:__ @macro WUFFS_BMP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7373:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BMP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_BMP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_bmp__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7377:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_bmp__decoder

{-| __C declaration:__ @macro WUFFS_BZIP2__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7759:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BZIP2__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_BZIP2__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_BZIP2__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7761:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_BZIP2__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_BZIP2__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_bzip2__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7765:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_bzip2__decoder

{-| __C declaration:__ @macro WUFFS_CBOR__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8049:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_CBOR__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_CBOR__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_CBOR__DECODER_DEPTH_MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8051:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_CBOR__DECODER_DEPTH_MAX_INCL :: BG.CUInt
wUFFS_CBOR__DECODER_DEPTH_MAX_INCL =
  (1024 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_CBOR__DECODER_DST_TOKEN_BUFFER_LENGTH_MIN_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8053:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_CBOR__DECODER_DST_TOKEN_BUFFER_LENGTH_MIN_INCL :: BG.CUInt
wUFFS_CBOR__DECODER_DST_TOKEN_BUFFER_LENGTH_MIN_INCL =
  (2 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_CBOR__DECODER_SRC_IO_BUFFER_LENGTH_MIN_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8055:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_CBOR__DECODER_SRC_IO_BUFFER_LENGTH_MIN_INCL :: BG.CUInt
wUFFS_CBOR__DECODER_SRC_IO_BUFFER_LENGTH_MIN_INCL =
  (9 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_CBOR__TOKEN_VALUE_MAJOR@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8057:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_CBOR__TOKEN_VALUE_MAJOR :: BG.CUInt
wUFFS_CBOR__TOKEN_VALUE_MAJOR = (731642 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_CBOR__TOKEN_VALUE_MINOR__DETAIL_MASK@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8059:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_CBOR__TOKEN_VALUE_MINOR__DETAIL_MASK :: BG.CUInt
wUFFS_CBOR__TOKEN_VALUE_MINOR__DETAIL_MASK =
  (262143 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_CBOR__TOKEN_VALUE_MINOR__MINUS_1_MINUS_X@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8061:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_CBOR__TOKEN_VALUE_MINOR__MINUS_1_MINUS_X :: BG.CUInt
wUFFS_CBOR__TOKEN_VALUE_MINOR__MINUS_1_MINUS_X =
  (16777216 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_CBOR__TOKEN_VALUE_MINOR__SIMPLE_VALUE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8063:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_CBOR__TOKEN_VALUE_MINOR__SIMPLE_VALUE :: BG.CUInt
wUFFS_CBOR__TOKEN_VALUE_MINOR__SIMPLE_VALUE =
  (8388608 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_CBOR__TOKEN_VALUE_MINOR__TAG@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8065:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_CBOR__TOKEN_VALUE_MINOR__TAG :: BG.CUInt
wUFFS_CBOR__TOKEN_VALUE_MINOR__TAG =
  (4194304 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_cbor__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8069:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_cbor__decoder

{-| __C declaration:__ @struct wuffs_crc32__ieee_hasher__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8292:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_crc32__ieee_hasher

{-| __C declaration:__ @struct wuffs_crc64__ecma_hasher__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8513:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_crc64__ecma_hasher

{-| __C declaration:__ @macro WUFFS_DEFLATE__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8747:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_DEFLATE__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_DEFLATE__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_DEFLATE__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8749:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_DEFLATE__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_DEFLATE__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (1 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_deflate__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8753:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_deflate__decoder

{-| __C declaration:__ @macro WUFFS_ETC2__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9040:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_ETC2__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_ETC2__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_etc2__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9044:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_etc2__decoder

{-| __C declaration:__ @macro WUFFS_GIF__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9411:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_GIF__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_GIF__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_GIF__QUIRK_DELAY_NUM_DECODED_FRAMES@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9413:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_GIF__QUIRK_DELAY_NUM_DECODED_FRAMES :: BG.CUInt
wUFFS_GIF__QUIRK_DELAY_NUM_DECODED_FRAMES =
  (983928832 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_GIF__QUIRK_FIRST_FRAME_LOCAL_PALETTE_MEANS_BLACK_BACKGROUND@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9415:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_GIF__QUIRK_FIRST_FRAME_LOCAL_PALETTE_MEANS_BLACK_BACKGROUND :: BG.CUInt
wUFFS_GIF__QUIRK_FIRST_FRAME_LOCAL_PALETTE_MEANS_BLACK_BACKGROUND =
  (983928833 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_GIF__QUIRK_HONOR_BACKGROUND_COLOR@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9417:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_GIF__QUIRK_HONOR_BACKGROUND_COLOR :: BG.CUInt
wUFFS_GIF__QUIRK_HONOR_BACKGROUND_COLOR =
  (983928834 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_GIF__QUIRK_IGNORE_TOO_MUCH_PIXEL_DATA@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9419:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_GIF__QUIRK_IGNORE_TOO_MUCH_PIXEL_DATA :: BG.CUInt
wUFFS_GIF__QUIRK_IGNORE_TOO_MUCH_PIXEL_DATA =
  (983928835 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_GIF__QUIRK_IMAGE_BOUNDS_ARE_STRICT@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9421:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_GIF__QUIRK_IMAGE_BOUNDS_ARE_STRICT :: BG.CUInt
wUFFS_GIF__QUIRK_IMAGE_BOUNDS_ARE_STRICT =
  (983928836 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_GIF__QUIRK_REJECT_EMPTY_FRAME@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9423:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_GIF__QUIRK_REJECT_EMPTY_FRAME :: BG.CUInt
wUFFS_GIF__QUIRK_REJECT_EMPTY_FRAME =
  (983928837 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_GIF__QUIRK_REJECT_EMPTY_PALETTE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9425:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_GIF__QUIRK_REJECT_EMPTY_PALETTE :: BG.CUInt
wUFFS_GIF__QUIRK_REJECT_EMPTY_PALETTE =
  (983928838 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_gif__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9429:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_gif__decoder

{-| __C declaration:__ @macro WUFFS_GZIP__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9878:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_GZIP__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_GZIP__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_GZIP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9880:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_GZIP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_GZIP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (1 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_gzip__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9884:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_gzip__decoder

{-| __C declaration:__ @macro WUFFS_JPEG__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10142:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JPEG__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_JPEG__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (51552191232 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JPEG__QUIRK_REJECT_PROGRESSIVE_JPEGS@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10144:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JPEG__QUIRK_REJECT_PROGRESSIVE_JPEGS :: BG.CUInt
wUFFS_JPEG__QUIRK_REJECT_PROGRESSIVE_JPEGS =
  (1162824704 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_jpeg__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10148:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_jpeg__decoder

{-| __C declaration:__ @macro WUFFS_JSON__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10634:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_JSON__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__DECODER_DEPTH_MAX_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10636:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__DECODER_DEPTH_MAX_INCL :: BG.CUInt
wUFFS_JSON__DECODER_DEPTH_MAX_INCL =
  (1024 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__DECODER_DST_TOKEN_BUFFER_LENGTH_MIN_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10638:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__DECODER_DST_TOKEN_BUFFER_LENGTH_MIN_INCL :: BG.CUInt
wUFFS_JSON__DECODER_DST_TOKEN_BUFFER_LENGTH_MIN_INCL =
  (1 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__DECODER_SRC_IO_BUFFER_LENGTH_MIN_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10640:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__DECODER_SRC_IO_BUFFER_LENGTH_MIN_INCL :: BG.CUInt
wUFFS_JSON__DECODER_SRC_IO_BUFFER_LENGTH_MIN_INCL =
  (100 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_ASCII_CONTROL_CODES@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10642:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_ASCII_CONTROL_CODES :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_ASCII_CONTROL_CODES =
  (1167656960 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_BACKSLASH_A@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10644:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_A :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_A =
  (1167656961 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_BACKSLASH_CAPITAL_U@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10646:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_CAPITAL_U :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_CAPITAL_U =
  (1167656962 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_BACKSLASH_E@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10648:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_E :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_E =
  (1167656963 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_BACKSLASH_NEW_LINE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10650:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_NEW_LINE :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_NEW_LINE =
  (1167656964 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_BACKSLASH_QUESTION_MARK@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10652:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_QUESTION_MARK :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_QUESTION_MARK =
  (1167656965 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_BACKSLASH_SINGLE_QUOTE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10654:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_SINGLE_QUOTE :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_SINGLE_QUOTE =
  (1167656966 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_BACKSLASH_V@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10656:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_V :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_V =
  (1167656967 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_BACKSLASH_X_AS_CODE_POINTS@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10658:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_X_AS_CODE_POINTS :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_X_AS_CODE_POINTS =
  (1167656969 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_BACKSLASH_ZERO@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10660:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_ZERO :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_BACKSLASH_ZERO =
  (1167656970 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_COMMENT_BLOCK@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10662:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_COMMENT_BLOCK :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_COMMENT_BLOCK =
  (1167656971 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_COMMENT_LINE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10664:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_COMMENT_LINE :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_COMMENT_LINE =
  (1167656972 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_EXTRA_COMMA@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10666:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_EXTRA_COMMA :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_EXTRA_COMMA =
  (1167656973 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_INF_NAN_NUMBERS@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10668:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_INF_NAN_NUMBERS :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_INF_NAN_NUMBERS =
  (1167656974 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_LEADING_ASCII_RECORD_SEPARATOR@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10670:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_LEADING_ASCII_RECORD_SEPARATOR :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_LEADING_ASCII_RECORD_SEPARATOR =
  (1167656975 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_LEADING_UNICODE_BYTE_ORDER_MARK@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10672:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_LEADING_UNICODE_BYTE_ORDER_MARK :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_LEADING_UNICODE_BYTE_ORDER_MARK =
  (1167656976 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_ALLOW_TRAILING_FILLER@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10674:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_ALLOW_TRAILING_FILLER :: BG.CUInt
wUFFS_JSON__QUIRK_ALLOW_TRAILING_FILLER =
  (1167656977 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_EXPECT_TRAILING_NEW_LINE_OR_EOF@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10676:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_EXPECT_TRAILING_NEW_LINE_OR_EOF :: BG.CUInt
wUFFS_JSON__QUIRK_EXPECT_TRAILING_NEW_LINE_OR_EOF =
  (1167656978 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_JSON_POINTER_ALLOW_TILDE_N_TILDE_R_TILDE_T@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10678:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_JSON_POINTER_ALLOW_TILDE_N_TILDE_R_TILDE_T :: BG.CUInt
wUFFS_JSON__QUIRK_JSON_POINTER_ALLOW_TILDE_N_TILDE_R_TILDE_T =
  (1167656979 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_JSON__QUIRK_REPLACE_INVALID_UNICODE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10680:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_JSON__QUIRK_REPLACE_INVALID_UNICODE :: BG.CUInt
wUFFS_JSON__QUIRK_REPLACE_INVALID_UNICODE =
  (1167656980 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_json__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10684:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_json__decoder

{-| __C declaration:__ @macro WUFFS_LZMA__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10922:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_LZMA__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_LZMA__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_LZMA__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10924:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_LZMA__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_LZMA__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (4294967568 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_LZMA__QUIRK_ALLOW_NON_ZERO_INITIAL_BYTE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10926:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_LZMA__QUIRK_ALLOW_NON_ZERO_INITIAL_BYTE :: BG.CUInt
wUFFS_LZMA__QUIRK_ALLOW_NON_ZERO_INITIAL_BYTE =
  (1290294272 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_LZMA__QUIRK_FORMAT_EXTENSION@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10928:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_LZMA__QUIRK_FORMAT_EXTENSION :: BG.CUInt
wUFFS_LZMA__QUIRK_FORMAT_EXTENSION =
  (1290294273 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_lzma__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10932:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_lzma__decoder

{-| __C declaration:__ @macro WUFFS_LZIP__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11243:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_LZIP__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_LZIP__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_LZIP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11245:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_LZIP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_LZIP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (4294967568 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_lzip__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11249:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_lzip__decoder

{-| __C declaration:__ @macro WUFFS_LZW__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11483:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_LZW__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_LZW__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_LZW__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11485:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_LZW__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_LZW__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_LZW__QUIRK_LITERAL_WIDTH_PLUS_ONE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11487:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_LZW__QUIRK_LITERAL_WIDTH_PLUS_ONE :: BG.CUInt
wUFFS_LZW__QUIRK_LITERAL_WIDTH_PLUS_ONE =
  (1290672128 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_lzw__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11491:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_lzw__decoder

{-| __C declaration:__ @macro WUFFS_NETPBM__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11743:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_NETPBM__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_NETPBM__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_netpbm__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11747:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_netpbm__decoder

{-| __C declaration:__ @macro WUFFS_NIE__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12089:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_NIE__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_NIE__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_nie__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12093:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_nie__decoder

{-| __C declaration:__ @macro WUFFS_ZLIB__QUIRK_JUST_RAW_DEFLATE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12443:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_ZLIB__QUIRK_JUST_RAW_DEFLATE :: BG.CUInt
wUFFS_ZLIB__QUIRK_JUST_RAW_DEFLATE =
  (2056083456 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_ZLIB__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12445:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_ZLIB__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_ZLIB__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_ZLIB__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12447:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_ZLIB__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_ZLIB__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (1 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_zlib__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12451:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_zlib__decoder

{-| __C declaration:__ @macro WUFFS_PNG__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12723:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_PNG__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_PNG__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (2251799562027015 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_PNG__DECODER_SRC_IO_BUFFER_LENGTH_MIN_INCL@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12725:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_PNG__DECODER_SRC_IO_BUFFER_LENGTH_MIN_INCL :: BG.CUInt
wUFFS_PNG__DECODER_SRC_IO_BUFFER_LENGTH_MIN_INCL =
  (8 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_png__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12729:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_png__decoder

{-| __C declaration:__ @macro WUFFS_QOI__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 13218:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_QOI__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_QOI__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_qoi__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 13222:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_qoi__decoder

{-| __C declaration:__ @struct wuffs_sha256__hasher__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 13581:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_sha256__hasher

{-| __C declaration:__ @macro WUFFS_TARGA__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 13815:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_TARGA__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_TARGA__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_targa__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 13819:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_targa__decoder

{-| __C declaration:__ @macro WUFFS_THUMBHASH__QUIRK_JUST_RAW_THUMBHASH@

    __defined at:__ @wuffs\/wuffs-v0.4.c 14190:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_THUMBHASH__QUIRK_JUST_RAW_THUMBHASH :: BG.CUInt
wUFFS_THUMBHASH__QUIRK_JUST_RAW_THUMBHASH =
  (1712283648 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_THUMBHASH__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 14192:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_THUMBHASH__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_THUMBHASH__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_thumbhash__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 14196:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_thumbhash__decoder

{-| __C declaration:__ @struct wuffs_vp8__placeholder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 14566:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_vp8__placeholder

{-| __C declaration:__ @macro WUFFS_WBMP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 14701:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_WBMP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_WBMP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_wbmp__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 14705:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_wbmp__decoder

{-| __C declaration:__ @macro WUFFS_WEBP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15066:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_WEBP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_WEBP__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_webp__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15070:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_webp__decoder

{-| __C declaration:__ @struct wuffs_xxhash32__hasher__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15507:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_xxhash32__hasher

{-| __C declaration:__ @struct wuffs_xxhash64__hasher__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15733:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_xxhash64__hasher

{-| __C declaration:__ @macro WUFFS_XZ__QUIRK_DECODE_STANDALONE_CONCATENATED_STREAMS@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15972:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_XZ__QUIRK_DECODE_STANDALONE_CONCATENATED_STREAMS :: BG.CUInt
wUFFS_XZ__QUIRK_DECODE_STANDALONE_CONCATENATED_STREAMS =
  (1963655168 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_XZ__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15974:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_XZ__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_XZ__DECODER_DST_HISTORY_RETAIN_LENGTH_MAX_INCL_WORST_CASE =
  (0 :: BG.CUInt)

{-| __C declaration:__ @macro WUFFS_XZ__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15976:9@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wUFFS_XZ__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE :: BG.CUInt
wUFFS_XZ__DECODER_WORKBUF_LEN_MAX_INCL_WORST_CASE =
  (4294967568 :: BG.CUInt)

{-| __C declaration:__ @struct wuffs_xz__decoder__struct@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15980:16@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
data Wuffs_xz__decoder
