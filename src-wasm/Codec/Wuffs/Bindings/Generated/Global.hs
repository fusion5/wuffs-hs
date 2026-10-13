{-# LANGUAGE DataKinds #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_HADDOCK prune #-}

module Codec.Wuffs.Bindings.Generated.Global
    ( Codec.Wuffs.Bindings.Generated.Global.wuffs_base__note__i_o_redirect
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__note__end_of_data
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__note__metadata_reported
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__suspension__even_more_information
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__suspension__mispositioned_read
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__suspension__mispositioned_write
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__suspension__short_read
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__suspension__short_workbuf
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__suspension__short_write
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__bad_i_o_position
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__bad_argument_length_too_short
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__bad_argument
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__bad_call_sequence
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__bad_data
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__bad_receiver
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__bad_restart
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__bad_sizeof_receiver
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__bad_vtable
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__bad_workbuf_length
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__bad_wuffs_version
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__cannot_return_a_suspension
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__disabled_by_wuffs_config_dst_pixel_format_enable_allowlist
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__disabled_by_previous_error
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__initialize_falsely_claimed_already_zeroed
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__initialize_not_called
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__insufficient_history
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__interleaved_coroutine_calls
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__no_more_information
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__not_enough_data
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__out_of_bounds
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__unsupported_image_dimension
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__unsupported_method
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__unsupported_option
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__unsupported_pixel_swizzler_option
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__error__too_much_data
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_private_impl__pixel_format__bits_per_channel
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__hasher_u32__vtable_name
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__hasher_u64__vtable_name
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__hasher_bitvec256__vtable_name
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__image_decoder__vtable_name
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__io_transformer__vtable_name
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_base__token_decoder__vtable_name
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_bmp__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_bmp__error__bad_rle_compression
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_bmp__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_bmp__error__unsupported_bmp_file
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_bzip2__error__bad_huffman_code_over_subscribed
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_bzip2__error__bad_huffman_code_under_subscribed
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_bzip2__error__bad_block_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_bzip2__error__bad_block_length
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_bzip2__error__bad_checksum
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_bzip2__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_bzip2__error__bad_number_of_sections
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_bzip2__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_bzip2__error__unsupported_block_randomization
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_cbor__error__bad_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_cbor__error__unsupported_recursion_depth
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_deflate__error__bad_huffman_code_over_subscribed
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_deflate__error__bad_huffman_code_under_subscribed
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_deflate__error__bad_huffman_code_length_count
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_deflate__error__bad_huffman_code_length_repetition
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_deflate__error__bad_huffman_code
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_deflate__error__bad_huffman_minimum_code_length
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_deflate__error__bad_block
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_deflate__error__bad_distance
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_deflate__error__bad_distance_code_count
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_deflate__error__bad_literal_length_code_count
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_deflate__error__inconsistent_stored_block_length
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_deflate__error__missing_end_of_block_code
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_deflate__error__no_huffman_codes
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_deflate__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_etc2__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_etc2__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_etc2__error__unsupported_etc2_file
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_gif__error__bad_lzw_code
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_gif__error__bad_extension_label
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_gif__error__bad_frame_size
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_gif__error__bad_graphic_control
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_gif__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_gif__error__bad_literal_width
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_gif__error__bad_palette
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_gif__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_gzip__error__bad_checksum
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_gzip__error__bad_compression_method
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_gzip__error__bad_encoding_flags
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_gzip__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_gzip__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__bad_dht_marker
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__bad_dqt_marker
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__bad_dri_marker
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__bad_sof_marker
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__bad_sos_marker
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__bad_marker
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__bad_scan_count
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__missing_huffman_table
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__missing_quantization_table
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__rejected_progressive_jpeg
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__short_sos_bitstream
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__unsupported_arithmetic_coding
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__unsupported_color_model
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__unsupported_fractional_sampling
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__unsupported_hierarchical_coding
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__unsupported_implicit_height
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__unsupported_lossless_coding
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__unsupported_marker
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__unsupported_precision_12_bits
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__unsupported_precision_16_bits
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__unsupported_precision
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_jpeg__error__unsupported_scan_count
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_json__error__bad_c0_control_code
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_json__error__bad_utf_8
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_json__error__bad_backslash_escape
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_json__error__bad_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_json__error__bad_new_line_in_a_string
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_json__error__bad_quirk_combination
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_json__error__unsupported_number_length
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_json__error__unsupported_recursion_depth
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzma__error__bad_lzma2_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzma__error__bad_bitstream_trailer
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzma__error__bad_code
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzma__error__bad_decoded_length
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzma__error__bad_distance
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzma__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzma__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzma__error__unsupported_decoded_length
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzma__error__unsupported_properties
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzip__error__bad_checksum
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzip__error__bad_footer
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzip__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzip__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzw__error__bad_code
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_lzw__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_netpbm__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_netpbm__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_netpbm__error__unsupported_netpbm_file
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_nie__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_nie__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_nie__error__unsupported_nie_file
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_zlib__note__dictionary_required
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_zlib__error__bad_checksum
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_zlib__error__bad_compression_method
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_zlib__error__bad_compression_window_size
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_zlib__error__bad_parity_check
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_zlib__error__incorrect_dictionary
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_zlib__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_png__error__bad_animation_sequence_number
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_png__error__bad_checksum
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_png__error__bad_chunk
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_png__error__bad_filter
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_png__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_png__error__bad_text_chunk_not_latin_1
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_png__error__missing_palette
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_png__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_png__error__unsupported_cgbi_extension
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_png__error__unsupported_png_compression_method
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_png__error__unsupported_png_file
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_qoi__error__bad_footer
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_qoi__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_qoi__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_targa__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_targa__error__bad_run_length_encoding
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_targa__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_targa__error__unsupported_targa_file
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_thumbhash__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_thumbhash__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_wbmp__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_wbmp__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_webp__error__bad_huffman_code_over_subscribed
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_webp__error__bad_huffman_code_under_subscribed
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_webp__error__bad_huffman_code
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_webp__error__bad_back_reference
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_webp__error__bad_color_cache
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_webp__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_webp__error__bad_transform
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_webp__error__short_chunk
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_webp__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_webp__error__unsupported_number_of_huffman_groups
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_webp__error__unsupported_transform_after_color_indexing_transform
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_webp__error__unsupported_webp_file
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_xz__error__bad_bcj_offset
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_xz__error__bad_block_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_xz__error__bad_checksum
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_xz__error__bad_filter
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_xz__error__bad_footer
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_xz__error__bad_header
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_xz__error__bad_header_concatenated_stream
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_xz__error__bad_index
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_xz__error__bad_padding
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_xz__error__truncated_input
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_xz__error__unsupported_checksum_algorithm
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_xz__error__unsupported_filter
    , Codec.Wuffs.Bindings.Generated.Global.wuffs_xz__error__unsupported_filter_combination
    )
  where

import qualified HsBindgen.Runtime.ConstantArray as CA
import qualified HsBindgen.Runtime.IncompleteArray as IA
import qualified HsBindgen.Runtime.LibC
import qualified HsBindgen.Runtime.PtrConst as PtrConst
import qualified HsBindgen.Runtime.Support as BG
import qualified HsBindgen.Runtime.Support.CAPI
import Prelude (IO, fmap)

$(HsBindgen.Runtime.Support.CAPI.addCSource (HsBindgen.Runtime.Support.CAPI.unlines
  [ "#include <wuffs/wuffs-v0.4.c>"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__note__i_o_redirect */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_334f4059689fd195 (void))[]"
  , "{"
  , "  return &wuffs_base__note__i_o_redirect;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__note__end_of_data */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_99a0dde74fce47c6 (void))[]"
  , "{"
  , "  return &wuffs_base__note__end_of_data;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__note__metadata_reported */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_b0558c6dedcad9cb (void))[]"
  , "{"
  , "  return &wuffs_base__note__metadata_reported;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__even_more_information */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_a16eefe1a7b46422 (void))[]"
  , "{"
  , "  return &wuffs_base__suspension__even_more_information;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__mispositioned_read */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_6cd80aec427b1b87 (void))[]"
  , "{"
  , "  return &wuffs_base__suspension__mispositioned_read;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__mispositioned_write */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_7b9a8d6e7df1b08a (void))[]"
  , "{"
  , "  return &wuffs_base__suspension__mispositioned_write;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__short_read */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_a9667ad5571e3eef (void))[]"
  , "{"
  , "  return &wuffs_base__suspension__short_read;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__short_workbuf */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_da2d0407595dc4a2 (void))[]"
  , "{"
  , "  return &wuffs_base__suspension__short_workbuf;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__short_write */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_b8e79970eb716666 (void))[]"
  , "{"
  , "  return &wuffs_base__suspension__short_write;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_i_o_position */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_a6ab0c711c0fc60a (void))[]"
  , "{"
  , "  return &wuffs_base__error__bad_i_o_position;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_argument_length_too_short */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_50cc800729a8914b (void))[]"
  , "{"
  , "  return &wuffs_base__error__bad_argument_length_too_short;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_argument */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_67b1d550df69c215 (void))[]"
  , "{"
  , "  return &wuffs_base__error__bad_argument;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_call_sequence */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_dd0309321468e51e (void))[]"
  , "{"
  , "  return &wuffs_base__error__bad_call_sequence;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_data */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_3298622abc817b9f (void))[]"
  , "{"
  , "  return &wuffs_base__error__bad_data;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_receiver */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_e28112f5055454e5 (void))[]"
  , "{"
  , "  return &wuffs_base__error__bad_receiver;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_restart */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_33a54aa9e3c6e2b0 (void))[]"
  , "{"
  , "  return &wuffs_base__error__bad_restart;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_sizeof_receiver */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_83436b56fe6558bb (void))[]"
  , "{"
  , "  return &wuffs_base__error__bad_sizeof_receiver;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_vtable */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_3fe62a785438ac34 (void))[]"
  , "{"
  , "  return &wuffs_base__error__bad_vtable;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_workbuf_length */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_e4bcc81899c5345f (void))[]"
  , "{"
  , "  return &wuffs_base__error__bad_workbuf_length;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_wuffs_version */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_7e8cf4580587d0e2 (void))[]"
  , "{"
  , "  return &wuffs_base__error__bad_wuffs_version;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__cannot_return_a_suspension */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_f271e815a2ac86fd (void))[]"
  , "{"
  , "  return &wuffs_base__error__cannot_return_a_suspension;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__disabled_by_wuffs_config_dst_pixel_format_enable_allowlist */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_72dcc9bb63e35dc0 (void))[]"
  , "{"
  , "  return &wuffs_base__error__disabled_by_wuffs_config_dst_pixel_format_enable_allowlist;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__disabled_by_previous_error */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_8013130bbe7bf2fa (void))[]"
  , "{"
  , "  return &wuffs_base__error__disabled_by_previous_error;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__initialize_falsely_claimed_already_zeroed */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_4083aa98ea710f39 (void))[]"
  , "{"
  , "  return &wuffs_base__error__initialize_falsely_claimed_already_zeroed;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__initialize_not_called */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_6de21b09c6c53e03 (void))[]"
  , "{"
  , "  return &wuffs_base__error__initialize_not_called;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__insufficient_history */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_2f4e7939d533c393 (void))[]"
  , "{"
  , "  return &wuffs_base__error__insufficient_history;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__interleaved_coroutine_calls */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_6f1d2be9932349b8 (void))[]"
  , "{"
  , "  return &wuffs_base__error__interleaved_coroutine_calls;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__no_more_information */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_bf461c2c5d23bb5f (void))[]"
  , "{"
  , "  return &wuffs_base__error__no_more_information;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__not_enough_data */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_889a41506a483c8f (void))[]"
  , "{"
  , "  return &wuffs_base__error__not_enough_data;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__out_of_bounds */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_b2eda981611e23e4 (void))[]"
  , "{"
  , "  return &wuffs_base__error__out_of_bounds;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__unsupported_image_dimension */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_f13ce6a3fa120fa2 (void))[]"
  , "{"
  , "  return &wuffs_base__error__unsupported_image_dimension;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__unsupported_method */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_410c71688a0df1bf (void))[]"
  , "{"
  , "  return &wuffs_base__error__unsupported_method;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__unsupported_option */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_8c73812f7ae593e4 (void))[]"
  , "{"
  , "  return &wuffs_base__error__unsupported_option;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__unsupported_pixel_swizzler_option */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_b9ce4192e55bb035 (void))[]"
  , "{"
  , "  return &wuffs_base__error__unsupported_pixel_swizzler_option;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__too_much_data */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_0044822060de025f (void))[]"
  , "{"
  , "  return &wuffs_base__error__too_much_data;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_private_impl__pixel_format__bits_per_channel */"
  , "__attribute__ ((const))"
  , "uint32_t const (*hs_bindgen_1f369f59a331543b (void))[16]"
  , "{"
  , "  return &wuffs_private_impl__pixel_format__bits_per_channel;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__hasher_u32__vtable_name */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_b84ba599ca442a27 (void))[]"
  , "{"
  , "  return &wuffs_base__hasher_u32__vtable_name;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__hasher_u64__vtable_name */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_a421f79fa0df89c8 (void))[]"
  , "{"
  , "  return &wuffs_base__hasher_u64__vtable_name;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__hasher_bitvec256__vtable_name */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_3803d08e698429ff (void))[]"
  , "{"
  , "  return &wuffs_base__hasher_bitvec256__vtable_name;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__image_decoder__vtable_name */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_5c648dad26c6d376 (void))[]"
  , "{"
  , "  return &wuffs_base__image_decoder__vtable_name;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__io_transformer__vtable_name */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_0fde96da33661efa (void))[]"
  , "{"
  , "  return &wuffs_base__io_transformer__vtable_name;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__token_decoder__vtable_name */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_569e17bd13768bef (void))[]"
  , "{"
  , "  return &wuffs_base__token_decoder__vtable_name;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bmp__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_6735b9025a077fc6 (void))[]"
  , "{"
  , "  return &wuffs_bmp__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bmp__error__bad_rle_compression */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_ffc9c055df6f01cd (void))[]"
  , "{"
  , "  return &wuffs_bmp__error__bad_rle_compression;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bmp__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_3aba09369b3ab912 (void))[]"
  , "{"
  , "  return &wuffs_bmp__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bmp__error__unsupported_bmp_file */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_877e6dcb98b461b1 (void))[]"
  , "{"
  , "  return &wuffs_bmp__error__unsupported_bmp_file;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_huffman_code_over_subscribed */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_291dc6677bcc25cf (void))[]"
  , "{"
  , "  return &wuffs_bzip2__error__bad_huffman_code_over_subscribed;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_huffman_code_under_subscribed */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_4bad25f5447916c3 (void))[]"
  , "{"
  , "  return &wuffs_bzip2__error__bad_huffman_code_under_subscribed;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_block_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_544365d9cc1f1280 (void))[]"
  , "{"
  , "  return &wuffs_bzip2__error__bad_block_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_block_length */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_4718926ec7d80ab6 (void))[]"
  , "{"
  , "  return &wuffs_bzip2__error__bad_block_length;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_checksum */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_2fdb0edbc6d920f3 (void))[]"
  , "{"
  , "  return &wuffs_bzip2__error__bad_checksum;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_f56977bcab751326 (void))[]"
  , "{"
  , "  return &wuffs_bzip2__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_number_of_sections */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_f9ade419489d479c (void))[]"
  , "{"
  , "  return &wuffs_bzip2__error__bad_number_of_sections;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_e06193b25a5d9fee (void))[]"
  , "{"
  , "  return &wuffs_bzip2__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__unsupported_block_randomization */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_5532cc5e47c47cdb (void))[]"
  , "{"
  , "  return &wuffs_bzip2__error__unsupported_block_randomization;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_cbor__error__bad_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_2828b834bd4b0acb (void))[]"
  , "{"
  , "  return &wuffs_cbor__error__bad_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_cbor__error__unsupported_recursion_depth */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_d96279d660804766 (void))[]"
  , "{"
  , "  return &wuffs_cbor__error__unsupported_recursion_depth;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code_over_subscribed */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_914cef069acdd44d (void))[]"
  , "{"
  , "  return &wuffs_deflate__error__bad_huffman_code_over_subscribed;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code_under_subscribed */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_4d4c7f70fa36681a (void))[]"
  , "{"
  , "  return &wuffs_deflate__error__bad_huffman_code_under_subscribed;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code_length_count */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_ee88304006ac8c84 (void))[]"
  , "{"
  , "  return &wuffs_deflate__error__bad_huffman_code_length_count;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code_length_repetition */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_2e1a332fa9b0a83c (void))[]"
  , "{"
  , "  return &wuffs_deflate__error__bad_huffman_code_length_repetition;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_f854d0be012e4d97 (void))[]"
  , "{"
  , "  return &wuffs_deflate__error__bad_huffman_code;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_minimum_code_length */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_ebe8eabf61c611e7 (void))[]"
  , "{"
  , "  return &wuffs_deflate__error__bad_huffman_minimum_code_length;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_block */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_47bbc4cce847fc50 (void))[]"
  , "{"
  , "  return &wuffs_deflate__error__bad_block;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_distance */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_762c79f8fe59da61 (void))[]"
  , "{"
  , "  return &wuffs_deflate__error__bad_distance;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_distance_code_count */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_c61d0514376a4548 (void))[]"
  , "{"
  , "  return &wuffs_deflate__error__bad_distance_code_count;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_literal_length_code_count */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_08da60c7e5609654 (void))[]"
  , "{"
  , "  return &wuffs_deflate__error__bad_literal_length_code_count;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__inconsistent_stored_block_length */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_c2597141c0d35ecd (void))[]"
  , "{"
  , "  return &wuffs_deflate__error__inconsistent_stored_block_length;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__missing_end_of_block_code */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_f92978eff0d367c1 (void))[]"
  , "{"
  , "  return &wuffs_deflate__error__missing_end_of_block_code;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__no_huffman_codes */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_f33082857ce35a04 (void))[]"
  , "{"
  , "  return &wuffs_deflate__error__no_huffman_codes;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_c30437d0bd70cfbf (void))[]"
  , "{"
  , "  return &wuffs_deflate__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_etc2__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_4405b2044e8f8d05 (void))[]"
  , "{"
  , "  return &wuffs_etc2__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_etc2__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_c7a7ae0c8efe2536 (void))[]"
  , "{"
  , "  return &wuffs_etc2__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_etc2__error__unsupported_etc2_file */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_093360ed3bc944c3 (void))[]"
  , "{"
  , "  return &wuffs_etc2__error__unsupported_etc2_file;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_lzw_code */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_9d2faf79f787a4c1 (void))[]"
  , "{"
  , "  return &wuffs_gif__error__bad_lzw_code;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_extension_label */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_ff7fee8283253d4d (void))[]"
  , "{"
  , "  return &wuffs_gif__error__bad_extension_label;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_frame_size */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_e1d73f5e11788d4f (void))[]"
  , "{"
  , "  return &wuffs_gif__error__bad_frame_size;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_graphic_control */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_87b450c404ad5b61 (void))[]"
  , "{"
  , "  return &wuffs_gif__error__bad_graphic_control;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_8a4f4353c63bd6f9 (void))[]"
  , "{"
  , "  return &wuffs_gif__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_literal_width */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_ee15538ca3134dca (void))[]"
  , "{"
  , "  return &wuffs_gif__error__bad_literal_width;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_palette */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_1806373bedc3df33 (void))[]"
  , "{"
  , "  return &wuffs_gif__error__bad_palette;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_ebda1a394d1507fb (void))[]"
  , "{"
  , "  return &wuffs_gif__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__bad_checksum */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_f912a9fd2d0afb27 (void))[]"
  , "{"
  , "  return &wuffs_gzip__error__bad_checksum;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__bad_compression_method */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_2f999336d6e0d17c (void))[]"
  , "{"
  , "  return &wuffs_gzip__error__bad_compression_method;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__bad_encoding_flags */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_0b06a78d47edd2b6 (void))[]"
  , "{"
  , "  return &wuffs_gzip__error__bad_encoding_flags;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_8328cbbdc2b4a6c0 (void))[]"
  , "{"
  , "  return &wuffs_gzip__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_7645447e1429cc34 (void))[]"
  , "{"
  , "  return &wuffs_gzip__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_dht_marker */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_de985da2bc3e8e84 (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__bad_dht_marker;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_dqt_marker */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_dde0d2f3f1bfa7b6 (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__bad_dqt_marker;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_dri_marker */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_4f8d5b12b287ced2 (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__bad_dri_marker;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_sof_marker */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_8b00f86fee6cea5e (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__bad_sof_marker;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_sos_marker */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_e41c05ba33e1d11d (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__bad_sos_marker;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_92920b093e92ec40 (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_marker */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_3845f3115351c76d (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__bad_marker;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_scan_count */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_8b255daf3f2edaa5 (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__bad_scan_count;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__missing_huffman_table */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_ef198f12f24726c3 (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__missing_huffman_table;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__missing_quantization_table */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_91fe4f9178b1c872 (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__missing_quantization_table;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__rejected_progressive_jpeg */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_72ecd045dcb5c7eb (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__rejected_progressive_jpeg;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__short_sos_bitstream */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_66ea2a7e67479d1b (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__short_sos_bitstream;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_5f217b4aa4a9547a (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_arithmetic_coding */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_d1c83c8c9c704781 (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__unsupported_arithmetic_coding;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_color_model */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_6687d06bba6ae71f (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__unsupported_color_model;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_fractional_sampling */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_49f05c027284ff37 (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__unsupported_fractional_sampling;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_hierarchical_coding */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_f3626575658cd9b4 (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__unsupported_hierarchical_coding;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_implicit_height */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_faed2b53194c1e8b (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__unsupported_implicit_height;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_lossless_coding */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_2bf950c9a6d5d599 (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__unsupported_lossless_coding;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_marker */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_2f3b3264da97676d (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__unsupported_marker;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_precision_12_bits */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_a1b1c54bbf1abd02 (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__unsupported_precision_12_bits;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_precision_16_bits */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_050b2db2ed09f38c (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__unsupported_precision_16_bits;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_precision */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_45f46e2b4d257e99 (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__unsupported_precision;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_scan_count */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_4c569fda519b451e (void))[]"
  , "{"
  , "  return &wuffs_jpeg__error__unsupported_scan_count;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_c0_control_code */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_61bcbb1f9083f8c2 (void))[]"
  , "{"
  , "  return &wuffs_json__error__bad_c0_control_code;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_utf_8 */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_d471236ec7860af5 (void))[]"
  , "{"
  , "  return &wuffs_json__error__bad_utf_8;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_backslash_escape */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_ff1487645a57f189 (void))[]"
  , "{"
  , "  return &wuffs_json__error__bad_backslash_escape;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_05ce2b499f370f70 (void))[]"
  , "{"
  , "  return &wuffs_json__error__bad_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_new_line_in_a_string */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_e33b4f740db7b7a9 (void))[]"
  , "{"
  , "  return &wuffs_json__error__bad_new_line_in_a_string;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_quirk_combination */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_bc72818f3aef61b2 (void))[]"
  , "{"
  , "  return &wuffs_json__error__bad_quirk_combination;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__unsupported_number_length */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_816ae60068df0c4f (void))[]"
  , "{"
  , "  return &wuffs_json__error__unsupported_number_length;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__unsupported_recursion_depth */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_b22376f118498aba (void))[]"
  , "{"
  , "  return &wuffs_json__error__unsupported_recursion_depth;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_lzma2_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_94d133c031b006a8 (void))[]"
  , "{"
  , "  return &wuffs_lzma__error__bad_lzma2_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_bitstream_trailer */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_3c59587f502e2080 (void))[]"
  , "{"
  , "  return &wuffs_lzma__error__bad_bitstream_trailer;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_code */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_fb1a4313e0c872b6 (void))[]"
  , "{"
  , "  return &wuffs_lzma__error__bad_code;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_decoded_length */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_5ea6702c9cce35a7 (void))[]"
  , "{"
  , "  return &wuffs_lzma__error__bad_decoded_length;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_distance */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_5fccf31fdd434751 (void))[]"
  , "{"
  , "  return &wuffs_lzma__error__bad_distance;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_27d4ce73f816576b (void))[]"
  , "{"
  , "  return &wuffs_lzma__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_18087d002c13676e (void))[]"
  , "{"
  , "  return &wuffs_lzma__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__unsupported_decoded_length */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_0c08b011435b6b4c (void))[]"
  , "{"
  , "  return &wuffs_lzma__error__unsupported_decoded_length;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__unsupported_properties */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_74321fd64856af76 (void))[]"
  , "{"
  , "  return &wuffs_lzma__error__unsupported_properties;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzip__error__bad_checksum */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_1af351f9a045d92a (void))[]"
  , "{"
  , "  return &wuffs_lzip__error__bad_checksum;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzip__error__bad_footer */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_bd437753547e3dc4 (void))[]"
  , "{"
  , "  return &wuffs_lzip__error__bad_footer;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzip__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_27d75fadb1a1a811 (void))[]"
  , "{"
  , "  return &wuffs_lzip__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzip__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_fe6890987e2dfbeb (void))[]"
  , "{"
  , "  return &wuffs_lzip__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzw__error__bad_code */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_51f9cb031b59405f (void))[]"
  , "{"
  , "  return &wuffs_lzw__error__bad_code;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzw__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_f0818320ecf21279 (void))[]"
  , "{"
  , "  return &wuffs_lzw__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_netpbm__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_98f82710a8c4c52a (void))[]"
  , "{"
  , "  return &wuffs_netpbm__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_netpbm__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_5e98ce32f722c33e (void))[]"
  , "{"
  , "  return &wuffs_netpbm__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_netpbm__error__unsupported_netpbm_file */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_c487329b882454e3 (void))[]"
  , "{"
  , "  return &wuffs_netpbm__error__unsupported_netpbm_file;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_nie__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_5b789fc55d82da90 (void))[]"
  , "{"
  , "  return &wuffs_nie__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_nie__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_71cdbfabd559b244 (void))[]"
  , "{"
  , "  return &wuffs_nie__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_nie__error__unsupported_nie_file */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_37bac8e70d746baa (void))[]"
  , "{"
  , "  return &wuffs_nie__error__unsupported_nie_file;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__note__dictionary_required */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_94df86635b63918f (void))[]"
  , "{"
  , "  return &wuffs_zlib__note__dictionary_required;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__bad_checksum */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_76f0357fc5f53f64 (void))[]"
  , "{"
  , "  return &wuffs_zlib__error__bad_checksum;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__bad_compression_method */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_f233f815d89bce69 (void))[]"
  , "{"
  , "  return &wuffs_zlib__error__bad_compression_method;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__bad_compression_window_size */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_dc523c3c094ddc34 (void))[]"
  , "{"
  , "  return &wuffs_zlib__error__bad_compression_window_size;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__bad_parity_check */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_46fc4e1071b784dd (void))[]"
  , "{"
  , "  return &wuffs_zlib__error__bad_parity_check;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__incorrect_dictionary */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_25e2354a38325563 (void))[]"
  , "{"
  , "  return &wuffs_zlib__error__incorrect_dictionary;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_851fe2bfb47b9dde (void))[]"
  , "{"
  , "  return &wuffs_zlib__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_animation_sequence_number */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_e02dd98137049a8b (void))[]"
  , "{"
  , "  return &wuffs_png__error__bad_animation_sequence_number;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_checksum */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_49f84a009b605cb8 (void))[]"
  , "{"
  , "  return &wuffs_png__error__bad_checksum;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_chunk */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_6e824a39f04d2c35 (void))[]"
  , "{"
  , "  return &wuffs_png__error__bad_chunk;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_filter */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_8bc5ec9d23d5dfe7 (void))[]"
  , "{"
  , "  return &wuffs_png__error__bad_filter;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_281ba0be9e759325 (void))[]"
  , "{"
  , "  return &wuffs_png__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_text_chunk_not_latin_1 */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_8f189d0bc484b7bf (void))[]"
  , "{"
  , "  return &wuffs_png__error__bad_text_chunk_not_latin_1;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__missing_palette */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_62bf75f7bd45e3aa (void))[]"
  , "{"
  , "  return &wuffs_png__error__missing_palette;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_755cfff84784efeb (void))[]"
  , "{"
  , "  return &wuffs_png__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__unsupported_cgbi_extension */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_5c854914e2012939 (void))[]"
  , "{"
  , "  return &wuffs_png__error__unsupported_cgbi_extension;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__unsupported_png_compression_method */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_81ab464f763d808c (void))[]"
  , "{"
  , "  return &wuffs_png__error__unsupported_png_compression_method;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__unsupported_png_file */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_93eebd8ee8e6ae67 (void))[]"
  , "{"
  , "  return &wuffs_png__error__unsupported_png_file;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_qoi__error__bad_footer */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_f75c02ab4e03d4b2 (void))[]"
  , "{"
  , "  return &wuffs_qoi__error__bad_footer;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_qoi__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_786a4ef80f6ee2ed (void))[]"
  , "{"
  , "  return &wuffs_qoi__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_qoi__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_80460865e2376097 (void))[]"
  , "{"
  , "  return &wuffs_qoi__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_targa__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_e32f6364890f5f02 (void))[]"
  , "{"
  , "  return &wuffs_targa__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_targa__error__bad_run_length_encoding */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_42848077c419328c (void))[]"
  , "{"
  , "  return &wuffs_targa__error__bad_run_length_encoding;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_targa__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_ed562bc47495ac18 (void))[]"
  , "{"
  , "  return &wuffs_targa__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_targa__error__unsupported_targa_file */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_88e19f2e919d2b02 (void))[]"
  , "{"
  , "  return &wuffs_targa__error__unsupported_targa_file;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_thumbhash__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_0ce032eb542eb03c (void))[]"
  , "{"
  , "  return &wuffs_thumbhash__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_thumbhash__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_2c46afcac967a005 (void))[]"
  , "{"
  , "  return &wuffs_thumbhash__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_wbmp__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_a830c732ca382ee4 (void))[]"
  , "{"
  , "  return &wuffs_wbmp__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_wbmp__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_7472af83e71a8288 (void))[]"
  , "{"
  , "  return &wuffs_wbmp__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_huffman_code_over_subscribed */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_32fa00af94eb731d (void))[]"
  , "{"
  , "  return &wuffs_webp__error__bad_huffman_code_over_subscribed;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_huffman_code_under_subscribed */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_97d8d7a8f9f8ea68 (void))[]"
  , "{"
  , "  return &wuffs_webp__error__bad_huffman_code_under_subscribed;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_huffman_code */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_0fe9fc7f829357b2 (void))[]"
  , "{"
  , "  return &wuffs_webp__error__bad_huffman_code;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_back_reference */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_5a49a0a9a5d80609 (void))[]"
  , "{"
  , "  return &wuffs_webp__error__bad_back_reference;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_color_cache */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_e0bfd210aff39bf4 (void))[]"
  , "{"
  , "  return &wuffs_webp__error__bad_color_cache;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_4647d7dee373ef90 (void))[]"
  , "{"
  , "  return &wuffs_webp__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_transform */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_ecf0012f971eb3fb (void))[]"
  , "{"
  , "  return &wuffs_webp__error__bad_transform;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__short_chunk */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_9e84dee3f104a0ff (void))[]"
  , "{"
  , "  return &wuffs_webp__error__short_chunk;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_fa31044547748624 (void))[]"
  , "{"
  , "  return &wuffs_webp__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__unsupported_number_of_huffman_groups */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_4737eb0cc06fb4c2 (void))[]"
  , "{"
  , "  return &wuffs_webp__error__unsupported_number_of_huffman_groups;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__unsupported_transform_after_color_indexing_transform */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_c56d6cf59733c5ce (void))[]"
  , "{"
  , "  return &wuffs_webp__error__unsupported_transform_after_color_indexing_transform;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__unsupported_webp_file */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_01b3fd272a86a9f5 (void))[]"
  , "{"
  , "  return &wuffs_webp__error__unsupported_webp_file;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_bcj_offset */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_5474ca94d0805efa (void))[]"
  , "{"
  , "  return &wuffs_xz__error__bad_bcj_offset;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_block_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_9733934f23578a01 (void))[]"
  , "{"
  , "  return &wuffs_xz__error__bad_block_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_checksum */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_5e2de6d4078a1c7d (void))[]"
  , "{"
  , "  return &wuffs_xz__error__bad_checksum;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_filter */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_d01bbe76156bbcf5 (void))[]"
  , "{"
  , "  return &wuffs_xz__error__bad_filter;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_footer */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_f67827fc437f323e (void))[]"
  , "{"
  , "  return &wuffs_xz__error__bad_footer;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_header */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_5513fddb09055a38 (void))[]"
  , "{"
  , "  return &wuffs_xz__error__bad_header;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_header_concatenated_stream */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_84e410fc1d06f166 (void))[]"
  , "{"
  , "  return &wuffs_xz__error__bad_header_concatenated_stream;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_index */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_5e6a370732ecfa96 (void))[]"
  , "{"
  , "  return &wuffs_xz__error__bad_index;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_padding */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_6f633fd05ab69f62 (void))[]"
  , "{"
  , "  return &wuffs_xz__error__bad_padding;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__truncated_input */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_06769c009d33eb46 (void))[]"
  , "{"
  , "  return &wuffs_xz__error__truncated_input;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__unsupported_checksum_algorithm */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_1c2d38dbcf5b302e (void))[]"
  , "{"
  , "  return &wuffs_xz__error__unsupported_checksum_algorithm;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__unsupported_filter */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_5782e833cc09ca2b (void))[]"
  , "{"
  , "  return &wuffs_xz__error__unsupported_filter;"
  , "}"
  , "/* org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__unsupported_filter_combination */"
  , "__attribute__ ((const))"
  , "char const (*hs_bindgen_02a992604823c35b (void))[]"
  , "{"
  , "  return &wuffs_xz__error__unsupported_filter_combination;"
  , "}"
  ]))

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__note__i_o_redirect@
foreign import ccall unsafe "hs_bindgen_334f4059689fd195" hs_bindgen_334f4059689fd195_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__note__i_o_redirect@
hs_bindgen_334f4059689fd195 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_334f4059689fd195 =
  fmap BG.fromFFIType hs_bindgen_334f4059689fd195_base

{-# NOINLINE wuffs_base__note__i_o_redirect #-}
{-| __C declaration:__ @wuffs_base__note__i_o_redirect@

    __defined at:__ @wuffs\/wuffs-v0.4.c 597:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__note__i_o_redirect :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__note__i_o_redirect =
  BG.unsafePerformIO hs_bindgen_334f4059689fd195

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__note__end_of_data@
foreign import ccall unsafe "hs_bindgen_99a0dde74fce47c6" hs_bindgen_99a0dde74fce47c6_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__note__end_of_data@
hs_bindgen_99a0dde74fce47c6 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_99a0dde74fce47c6 =
  fmap BG.fromFFIType hs_bindgen_99a0dde74fce47c6_base

{-# NOINLINE wuffs_base__note__end_of_data #-}
{-| __C declaration:__ @wuffs_base__note__end_of_data@

    __defined at:__ @wuffs\/wuffs-v0.4.c 598:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__note__end_of_data :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__note__end_of_data =
  BG.unsafePerformIO hs_bindgen_99a0dde74fce47c6

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__note__metadata_reported@
foreign import ccall unsafe "hs_bindgen_b0558c6dedcad9cb" hs_bindgen_b0558c6dedcad9cb_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__note__metadata_reported@
hs_bindgen_b0558c6dedcad9cb :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_b0558c6dedcad9cb =
  fmap BG.fromFFIType hs_bindgen_b0558c6dedcad9cb_base

{-# NOINLINE wuffs_base__note__metadata_reported #-}
{-| __C declaration:__ @wuffs_base__note__metadata_reported@

    __defined at:__ @wuffs\/wuffs-v0.4.c 599:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__note__metadata_reported :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__note__metadata_reported =
  BG.unsafePerformIO hs_bindgen_b0558c6dedcad9cb

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__even_more_information@
foreign import ccall unsafe "hs_bindgen_a16eefe1a7b46422" hs_bindgen_a16eefe1a7b46422_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__even_more_information@
hs_bindgen_a16eefe1a7b46422 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_a16eefe1a7b46422 =
  fmap BG.fromFFIType hs_bindgen_a16eefe1a7b46422_base

{-# NOINLINE wuffs_base__suspension__even_more_information #-}
{-| __C declaration:__ @wuffs_base__suspension__even_more_information@

    __defined at:__ @wuffs\/wuffs-v0.4.c 600:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__suspension__even_more_information :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__suspension__even_more_information =
  BG.unsafePerformIO hs_bindgen_a16eefe1a7b46422

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__mispositioned_read@
foreign import ccall unsafe "hs_bindgen_6cd80aec427b1b87" hs_bindgen_6cd80aec427b1b87_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__mispositioned_read@
hs_bindgen_6cd80aec427b1b87 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_6cd80aec427b1b87 =
  fmap BG.fromFFIType hs_bindgen_6cd80aec427b1b87_base

{-# NOINLINE wuffs_base__suspension__mispositioned_read #-}
{-| __C declaration:__ @wuffs_base__suspension__mispositioned_read@

    __defined at:__ @wuffs\/wuffs-v0.4.c 601:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__suspension__mispositioned_read :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__suspension__mispositioned_read =
  BG.unsafePerformIO hs_bindgen_6cd80aec427b1b87

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__mispositioned_write@
foreign import ccall unsafe "hs_bindgen_7b9a8d6e7df1b08a" hs_bindgen_7b9a8d6e7df1b08a_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__mispositioned_write@
hs_bindgen_7b9a8d6e7df1b08a :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_7b9a8d6e7df1b08a =
  fmap BG.fromFFIType hs_bindgen_7b9a8d6e7df1b08a_base

{-# NOINLINE wuffs_base__suspension__mispositioned_write #-}
{-| __C declaration:__ @wuffs_base__suspension__mispositioned_write@

    __defined at:__ @wuffs\/wuffs-v0.4.c 602:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__suspension__mispositioned_write :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__suspension__mispositioned_write =
  BG.unsafePerformIO hs_bindgen_7b9a8d6e7df1b08a

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__short_read@
foreign import ccall unsafe "hs_bindgen_a9667ad5571e3eef" hs_bindgen_a9667ad5571e3eef_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__short_read@
hs_bindgen_a9667ad5571e3eef :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_a9667ad5571e3eef =
  fmap BG.fromFFIType hs_bindgen_a9667ad5571e3eef_base

{-# NOINLINE wuffs_base__suspension__short_read #-}
{-| __C declaration:__ @wuffs_base__suspension__short_read@

    __defined at:__ @wuffs\/wuffs-v0.4.c 603:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__suspension__short_read :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__suspension__short_read =
  BG.unsafePerformIO hs_bindgen_a9667ad5571e3eef

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__short_workbuf@
foreign import ccall unsafe "hs_bindgen_da2d0407595dc4a2" hs_bindgen_da2d0407595dc4a2_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__short_workbuf@
hs_bindgen_da2d0407595dc4a2 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_da2d0407595dc4a2 =
  fmap BG.fromFFIType hs_bindgen_da2d0407595dc4a2_base

{-# NOINLINE wuffs_base__suspension__short_workbuf #-}
{-| __C declaration:__ @wuffs_base__suspension__short_workbuf@

    __defined at:__ @wuffs\/wuffs-v0.4.c 604:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__suspension__short_workbuf :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__suspension__short_workbuf =
  BG.unsafePerformIO hs_bindgen_da2d0407595dc4a2

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__short_write@
foreign import ccall unsafe "hs_bindgen_b8e79970eb716666" hs_bindgen_b8e79970eb716666_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__suspension__short_write@
hs_bindgen_b8e79970eb716666 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_b8e79970eb716666 =
  fmap BG.fromFFIType hs_bindgen_b8e79970eb716666_base

{-# NOINLINE wuffs_base__suspension__short_write #-}
{-| __C declaration:__ @wuffs_base__suspension__short_write@

    __defined at:__ @wuffs\/wuffs-v0.4.c 605:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__suspension__short_write :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__suspension__short_write =
  BG.unsafePerformIO hs_bindgen_b8e79970eb716666

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_i_o_position@
foreign import ccall unsafe "hs_bindgen_a6ab0c711c0fc60a" hs_bindgen_a6ab0c711c0fc60a_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_i_o_position@
hs_bindgen_a6ab0c711c0fc60a :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_a6ab0c711c0fc60a =
  fmap BG.fromFFIType hs_bindgen_a6ab0c711c0fc60a_base

{-# NOINLINE wuffs_base__error__bad_i_o_position #-}
{-| __C declaration:__ @wuffs_base__error__bad_i_o_position@

    __defined at:__ @wuffs\/wuffs-v0.4.c 606:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__bad_i_o_position :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__bad_i_o_position =
  BG.unsafePerformIO hs_bindgen_a6ab0c711c0fc60a

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_argument_length_too_short@
foreign import ccall unsafe "hs_bindgen_50cc800729a8914b" hs_bindgen_50cc800729a8914b_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_argument_length_too_short@
hs_bindgen_50cc800729a8914b :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_50cc800729a8914b =
  fmap BG.fromFFIType hs_bindgen_50cc800729a8914b_base

{-# NOINLINE wuffs_base__error__bad_argument_length_too_short #-}
{-| __C declaration:__ @wuffs_base__error__bad_argument_length_too_short@

    __defined at:__ @wuffs\/wuffs-v0.4.c 607:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__bad_argument_length_too_short :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__bad_argument_length_too_short =
  BG.unsafePerformIO hs_bindgen_50cc800729a8914b

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_argument@
foreign import ccall unsafe "hs_bindgen_67b1d550df69c215" hs_bindgen_67b1d550df69c215_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_argument@
hs_bindgen_67b1d550df69c215 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_67b1d550df69c215 =
  fmap BG.fromFFIType hs_bindgen_67b1d550df69c215_base

{-# NOINLINE wuffs_base__error__bad_argument #-}
{-| __C declaration:__ @wuffs_base__error__bad_argument@

    __defined at:__ @wuffs\/wuffs-v0.4.c 608:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__bad_argument :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__bad_argument =
  BG.unsafePerformIO hs_bindgen_67b1d550df69c215

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_call_sequence@
foreign import ccall unsafe "hs_bindgen_dd0309321468e51e" hs_bindgen_dd0309321468e51e_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_call_sequence@
hs_bindgen_dd0309321468e51e :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_dd0309321468e51e =
  fmap BG.fromFFIType hs_bindgen_dd0309321468e51e_base

{-# NOINLINE wuffs_base__error__bad_call_sequence #-}
{-| __C declaration:__ @wuffs_base__error__bad_call_sequence@

    __defined at:__ @wuffs\/wuffs-v0.4.c 609:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__bad_call_sequence :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__bad_call_sequence =
  BG.unsafePerformIO hs_bindgen_dd0309321468e51e

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_data@
foreign import ccall unsafe "hs_bindgen_3298622abc817b9f" hs_bindgen_3298622abc817b9f_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_data@
hs_bindgen_3298622abc817b9f :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_3298622abc817b9f =
  fmap BG.fromFFIType hs_bindgen_3298622abc817b9f_base

{-# NOINLINE wuffs_base__error__bad_data #-}
{-| __C declaration:__ @wuffs_base__error__bad_data@

    __defined at:__ @wuffs\/wuffs-v0.4.c 610:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__bad_data :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__bad_data =
  BG.unsafePerformIO hs_bindgen_3298622abc817b9f

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_receiver@
foreign import ccall unsafe "hs_bindgen_e28112f5055454e5" hs_bindgen_e28112f5055454e5_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_receiver@
hs_bindgen_e28112f5055454e5 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_e28112f5055454e5 =
  fmap BG.fromFFIType hs_bindgen_e28112f5055454e5_base

{-# NOINLINE wuffs_base__error__bad_receiver #-}
{-| __C declaration:__ @wuffs_base__error__bad_receiver@

    __defined at:__ @wuffs\/wuffs-v0.4.c 611:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__bad_receiver :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__bad_receiver =
  BG.unsafePerformIO hs_bindgen_e28112f5055454e5

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_restart@
foreign import ccall unsafe "hs_bindgen_33a54aa9e3c6e2b0" hs_bindgen_33a54aa9e3c6e2b0_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_restart@
hs_bindgen_33a54aa9e3c6e2b0 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_33a54aa9e3c6e2b0 =
  fmap BG.fromFFIType hs_bindgen_33a54aa9e3c6e2b0_base

{-# NOINLINE wuffs_base__error__bad_restart #-}
{-| __C declaration:__ @wuffs_base__error__bad_restart@

    __defined at:__ @wuffs\/wuffs-v0.4.c 612:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__bad_restart :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__bad_restart =
  BG.unsafePerformIO hs_bindgen_33a54aa9e3c6e2b0

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_sizeof_receiver@
foreign import ccall unsafe "hs_bindgen_83436b56fe6558bb" hs_bindgen_83436b56fe6558bb_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_sizeof_receiver@
hs_bindgen_83436b56fe6558bb :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_83436b56fe6558bb =
  fmap BG.fromFFIType hs_bindgen_83436b56fe6558bb_base

{-# NOINLINE wuffs_base__error__bad_sizeof_receiver #-}
{-| __C declaration:__ @wuffs_base__error__bad_sizeof_receiver@

    __defined at:__ @wuffs\/wuffs-v0.4.c 613:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__bad_sizeof_receiver :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__bad_sizeof_receiver =
  BG.unsafePerformIO hs_bindgen_83436b56fe6558bb

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_vtable@
foreign import ccall unsafe "hs_bindgen_3fe62a785438ac34" hs_bindgen_3fe62a785438ac34_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_vtable@
hs_bindgen_3fe62a785438ac34 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_3fe62a785438ac34 =
  fmap BG.fromFFIType hs_bindgen_3fe62a785438ac34_base

{-# NOINLINE wuffs_base__error__bad_vtable #-}
{-| __C declaration:__ @wuffs_base__error__bad_vtable@

    __defined at:__ @wuffs\/wuffs-v0.4.c 614:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__bad_vtable :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__bad_vtable =
  BG.unsafePerformIO hs_bindgen_3fe62a785438ac34

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_workbuf_length@
foreign import ccall unsafe "hs_bindgen_e4bcc81899c5345f" hs_bindgen_e4bcc81899c5345f_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_workbuf_length@
hs_bindgen_e4bcc81899c5345f :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_e4bcc81899c5345f =
  fmap BG.fromFFIType hs_bindgen_e4bcc81899c5345f_base

{-# NOINLINE wuffs_base__error__bad_workbuf_length #-}
{-| __C declaration:__ @wuffs_base__error__bad_workbuf_length@

    __defined at:__ @wuffs\/wuffs-v0.4.c 615:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__bad_workbuf_length :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__bad_workbuf_length =
  BG.unsafePerformIO hs_bindgen_e4bcc81899c5345f

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_wuffs_version@
foreign import ccall unsafe "hs_bindgen_7e8cf4580587d0e2" hs_bindgen_7e8cf4580587d0e2_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__bad_wuffs_version@
hs_bindgen_7e8cf4580587d0e2 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_7e8cf4580587d0e2 =
  fmap BG.fromFFIType hs_bindgen_7e8cf4580587d0e2_base

{-# NOINLINE wuffs_base__error__bad_wuffs_version #-}
{-| __C declaration:__ @wuffs_base__error__bad_wuffs_version@

    __defined at:__ @wuffs\/wuffs-v0.4.c 616:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__bad_wuffs_version :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__bad_wuffs_version =
  BG.unsafePerformIO hs_bindgen_7e8cf4580587d0e2

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__cannot_return_a_suspension@
foreign import ccall unsafe "hs_bindgen_f271e815a2ac86fd" hs_bindgen_f271e815a2ac86fd_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__cannot_return_a_suspension@
hs_bindgen_f271e815a2ac86fd :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_f271e815a2ac86fd =
  fmap BG.fromFFIType hs_bindgen_f271e815a2ac86fd_base

{-# NOINLINE wuffs_base__error__cannot_return_a_suspension #-}
{-| __C declaration:__ @wuffs_base__error__cannot_return_a_suspension@

    __defined at:__ @wuffs\/wuffs-v0.4.c 617:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__cannot_return_a_suspension :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__cannot_return_a_suspension =
  BG.unsafePerformIO hs_bindgen_f271e815a2ac86fd

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__disabled_by_wuffs_config_dst_pixel_format_enable_allowlist@
foreign import ccall unsafe "hs_bindgen_72dcc9bb63e35dc0" hs_bindgen_72dcc9bb63e35dc0_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__disabled_by_wuffs_config_dst_pixel_format_enable_allowlist@
hs_bindgen_72dcc9bb63e35dc0 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_72dcc9bb63e35dc0 =
  fmap BG.fromFFIType hs_bindgen_72dcc9bb63e35dc0_base

{-# NOINLINE wuffs_base__error__disabled_by_wuffs_config_dst_pixel_format_enable_allowlist #-}
{-| __C declaration:__ @wuffs_base__error__disabled_by_wuffs_config_dst_pixel_format_enable_allowlist@

    __defined at:__ @wuffs\/wuffs-v0.4.c 618:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__disabled_by_wuffs_config_dst_pixel_format_enable_allowlist :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__disabled_by_wuffs_config_dst_pixel_format_enable_allowlist =
  BG.unsafePerformIO hs_bindgen_72dcc9bb63e35dc0

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__disabled_by_previous_error@
foreign import ccall unsafe "hs_bindgen_8013130bbe7bf2fa" hs_bindgen_8013130bbe7bf2fa_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__disabled_by_previous_error@
hs_bindgen_8013130bbe7bf2fa :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_8013130bbe7bf2fa =
  fmap BG.fromFFIType hs_bindgen_8013130bbe7bf2fa_base

{-# NOINLINE wuffs_base__error__disabled_by_previous_error #-}
{-| __C declaration:__ @wuffs_base__error__disabled_by_previous_error@

    __defined at:__ @wuffs\/wuffs-v0.4.c 619:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__disabled_by_previous_error :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__disabled_by_previous_error =
  BG.unsafePerformIO hs_bindgen_8013130bbe7bf2fa

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__initialize_falsely_claimed_already_zeroed@
foreign import ccall unsafe "hs_bindgen_4083aa98ea710f39" hs_bindgen_4083aa98ea710f39_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__initialize_falsely_claimed_already_zeroed@
hs_bindgen_4083aa98ea710f39 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_4083aa98ea710f39 =
  fmap BG.fromFFIType hs_bindgen_4083aa98ea710f39_base

{-# NOINLINE wuffs_base__error__initialize_falsely_claimed_already_zeroed #-}
{-| __C declaration:__ @wuffs_base__error__initialize_falsely_claimed_already_zeroed@

    __defined at:__ @wuffs\/wuffs-v0.4.c 620:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__initialize_falsely_claimed_already_zeroed :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__initialize_falsely_claimed_already_zeroed =
  BG.unsafePerformIO hs_bindgen_4083aa98ea710f39

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__initialize_not_called@
foreign import ccall unsafe "hs_bindgen_6de21b09c6c53e03" hs_bindgen_6de21b09c6c53e03_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__initialize_not_called@
hs_bindgen_6de21b09c6c53e03 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_6de21b09c6c53e03 =
  fmap BG.fromFFIType hs_bindgen_6de21b09c6c53e03_base

{-# NOINLINE wuffs_base__error__initialize_not_called #-}
{-| __C declaration:__ @wuffs_base__error__initialize_not_called@

    __defined at:__ @wuffs\/wuffs-v0.4.c 621:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__initialize_not_called :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__initialize_not_called =
  BG.unsafePerformIO hs_bindgen_6de21b09c6c53e03

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__insufficient_history@
foreign import ccall unsafe "hs_bindgen_2f4e7939d533c393" hs_bindgen_2f4e7939d533c393_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__insufficient_history@
hs_bindgen_2f4e7939d533c393 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_2f4e7939d533c393 =
  fmap BG.fromFFIType hs_bindgen_2f4e7939d533c393_base

{-# NOINLINE wuffs_base__error__insufficient_history #-}
{-| __C declaration:__ @wuffs_base__error__insufficient_history@

    __defined at:__ @wuffs\/wuffs-v0.4.c 622:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__insufficient_history :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__insufficient_history =
  BG.unsafePerformIO hs_bindgen_2f4e7939d533c393

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__interleaved_coroutine_calls@
foreign import ccall unsafe "hs_bindgen_6f1d2be9932349b8" hs_bindgen_6f1d2be9932349b8_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__interleaved_coroutine_calls@
hs_bindgen_6f1d2be9932349b8 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_6f1d2be9932349b8 =
  fmap BG.fromFFIType hs_bindgen_6f1d2be9932349b8_base

{-# NOINLINE wuffs_base__error__interleaved_coroutine_calls #-}
{-| __C declaration:__ @wuffs_base__error__interleaved_coroutine_calls@

    __defined at:__ @wuffs\/wuffs-v0.4.c 623:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__interleaved_coroutine_calls :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__interleaved_coroutine_calls =
  BG.unsafePerformIO hs_bindgen_6f1d2be9932349b8

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__no_more_information@
foreign import ccall unsafe "hs_bindgen_bf461c2c5d23bb5f" hs_bindgen_bf461c2c5d23bb5f_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__no_more_information@
hs_bindgen_bf461c2c5d23bb5f :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_bf461c2c5d23bb5f =
  fmap BG.fromFFIType hs_bindgen_bf461c2c5d23bb5f_base

{-# NOINLINE wuffs_base__error__no_more_information #-}
{-| __C declaration:__ @wuffs_base__error__no_more_information@

    __defined at:__ @wuffs\/wuffs-v0.4.c 624:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__no_more_information :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__no_more_information =
  BG.unsafePerformIO hs_bindgen_bf461c2c5d23bb5f

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__not_enough_data@
foreign import ccall unsafe "hs_bindgen_889a41506a483c8f" hs_bindgen_889a41506a483c8f_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__not_enough_data@
hs_bindgen_889a41506a483c8f :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_889a41506a483c8f =
  fmap BG.fromFFIType hs_bindgen_889a41506a483c8f_base

{-# NOINLINE wuffs_base__error__not_enough_data #-}
{-| __C declaration:__ @wuffs_base__error__not_enough_data@

    __defined at:__ @wuffs\/wuffs-v0.4.c 625:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__not_enough_data :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__not_enough_data =
  BG.unsafePerformIO hs_bindgen_889a41506a483c8f

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__out_of_bounds@
foreign import ccall unsafe "hs_bindgen_b2eda981611e23e4" hs_bindgen_b2eda981611e23e4_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__out_of_bounds@
hs_bindgen_b2eda981611e23e4 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_b2eda981611e23e4 =
  fmap BG.fromFFIType hs_bindgen_b2eda981611e23e4_base

{-# NOINLINE wuffs_base__error__out_of_bounds #-}
{-| __C declaration:__ @wuffs_base__error__out_of_bounds@

    __defined at:__ @wuffs\/wuffs-v0.4.c 626:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__out_of_bounds :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__out_of_bounds =
  BG.unsafePerformIO hs_bindgen_b2eda981611e23e4

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__unsupported_image_dimension@
foreign import ccall unsafe "hs_bindgen_f13ce6a3fa120fa2" hs_bindgen_f13ce6a3fa120fa2_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__unsupported_image_dimension@
hs_bindgen_f13ce6a3fa120fa2 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_f13ce6a3fa120fa2 =
  fmap BG.fromFFIType hs_bindgen_f13ce6a3fa120fa2_base

{-# NOINLINE wuffs_base__error__unsupported_image_dimension #-}
{-| __C declaration:__ @wuffs_base__error__unsupported_image_dimension@

    __defined at:__ @wuffs\/wuffs-v0.4.c 627:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__unsupported_image_dimension :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__unsupported_image_dimension =
  BG.unsafePerformIO hs_bindgen_f13ce6a3fa120fa2

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__unsupported_method@
foreign import ccall unsafe "hs_bindgen_410c71688a0df1bf" hs_bindgen_410c71688a0df1bf_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__unsupported_method@
hs_bindgen_410c71688a0df1bf :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_410c71688a0df1bf =
  fmap BG.fromFFIType hs_bindgen_410c71688a0df1bf_base

{-# NOINLINE wuffs_base__error__unsupported_method #-}
{-| __C declaration:__ @wuffs_base__error__unsupported_method@

    __defined at:__ @wuffs\/wuffs-v0.4.c 628:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__unsupported_method :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__unsupported_method =
  BG.unsafePerformIO hs_bindgen_410c71688a0df1bf

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__unsupported_option@
foreign import ccall unsafe "hs_bindgen_8c73812f7ae593e4" hs_bindgen_8c73812f7ae593e4_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__unsupported_option@
hs_bindgen_8c73812f7ae593e4 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_8c73812f7ae593e4 =
  fmap BG.fromFFIType hs_bindgen_8c73812f7ae593e4_base

{-# NOINLINE wuffs_base__error__unsupported_option #-}
{-| __C declaration:__ @wuffs_base__error__unsupported_option@

    __defined at:__ @wuffs\/wuffs-v0.4.c 629:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__unsupported_option :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__unsupported_option =
  BG.unsafePerformIO hs_bindgen_8c73812f7ae593e4

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__unsupported_pixel_swizzler_option@
foreign import ccall unsafe "hs_bindgen_b9ce4192e55bb035" hs_bindgen_b9ce4192e55bb035_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__unsupported_pixel_swizzler_option@
hs_bindgen_b9ce4192e55bb035 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_b9ce4192e55bb035 =
  fmap BG.fromFFIType hs_bindgen_b9ce4192e55bb035_base

{-# NOINLINE wuffs_base__error__unsupported_pixel_swizzler_option #-}
{-| __C declaration:__ @wuffs_base__error__unsupported_pixel_swizzler_option@

    __defined at:__ @wuffs\/wuffs-v0.4.c 630:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__unsupported_pixel_swizzler_option :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__unsupported_pixel_swizzler_option =
  BG.unsafePerformIO hs_bindgen_b9ce4192e55bb035

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__too_much_data@
foreign import ccall unsafe "hs_bindgen_0044822060de025f" hs_bindgen_0044822060de025f_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__error__too_much_data@
hs_bindgen_0044822060de025f :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_0044822060de025f =
  fmap BG.fromFFIType hs_bindgen_0044822060de025f_base

{-# NOINLINE wuffs_base__error__too_much_data #-}
{-| __C declaration:__ @wuffs_base__error__too_much_data@

    __defined at:__ @wuffs\/wuffs-v0.4.c 631:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__error__too_much_data :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__error__too_much_data =
  BG.unsafePerformIO hs_bindgen_0044822060de025f

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_private_impl__pixel_format__bits_per_channel@
foreign import ccall unsafe "hs_bindgen_1f369f59a331543b" hs_bindgen_1f369f59a331543b_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_private_impl__pixel_format__bits_per_channel@
hs_bindgen_1f369f59a331543b :: IO (PtrConst.PtrConst (CA.ConstantArray 16 HsBindgen.Runtime.LibC.Word32))
hs_bindgen_1f369f59a331543b =
  fmap BG.fromFFIType hs_bindgen_1f369f59a331543b_base

{-# NOINLINE hs_bindgen_c9d61cc4d2aafbc9 #-}
{-| __C declaration:__ @wuffs_private_impl__pixel_format__bits_per_channel@

    __defined at:__ @wuffs\/wuffs-v0.4.c 4508:23@

    __exported by:__ @wuffs\/wuffs-v0.4.c@

    __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_wuffs_private_impl__pixel_format__bits_per_channel@
-}
hs_bindgen_c9d61cc4d2aafbc9 :: PtrConst.PtrConst (CA.ConstantArray 16 HsBindgen.Runtime.LibC.Word32)
hs_bindgen_c9d61cc4d2aafbc9 =
  BG.unsafePerformIO hs_bindgen_1f369f59a331543b

{-# NOINLINE wuffs_private_impl__pixel_format__bits_per_channel #-}
wuffs_private_impl__pixel_format__bits_per_channel :: CA.ConstantArray 16 HsBindgen.Runtime.LibC.Word32
wuffs_private_impl__pixel_format__bits_per_channel =
  BG.unsafePerformIO (PtrConst.peek hs_bindgen_c9d61cc4d2aafbc9)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__hasher_u32__vtable_name@
foreign import ccall unsafe "hs_bindgen_b84ba599ca442a27" hs_bindgen_b84ba599ca442a27_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__hasher_u32__vtable_name@
hs_bindgen_b84ba599ca442a27 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_b84ba599ca442a27 =
  fmap BG.fromFFIType hs_bindgen_b84ba599ca442a27_base

{-# NOINLINE wuffs_base__hasher_u32__vtable_name #-}
{-| __C declaration:__ @wuffs_base__hasher_u32__vtable_name@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6360:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__hasher_u32__vtable_name :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__hasher_u32__vtable_name =
  BG.unsafePerformIO hs_bindgen_b84ba599ca442a27

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__hasher_u64__vtable_name@
foreign import ccall unsafe "hs_bindgen_a421f79fa0df89c8" hs_bindgen_a421f79fa0df89c8_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__hasher_u64__vtable_name@
hs_bindgen_a421f79fa0df89c8 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_a421f79fa0df89c8 =
  fmap BG.fromFFIType hs_bindgen_a421f79fa0df89c8_base

{-# NOINLINE wuffs_base__hasher_u64__vtable_name #-}
{-| __C declaration:__ @wuffs_base__hasher_u64__vtable_name@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6467:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__hasher_u64__vtable_name :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__hasher_u64__vtable_name =
  BG.unsafePerformIO hs_bindgen_a421f79fa0df89c8

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__hasher_bitvec256__vtable_name@
foreign import ccall unsafe "hs_bindgen_3803d08e698429ff" hs_bindgen_3803d08e698429ff_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__hasher_bitvec256__vtable_name@
hs_bindgen_3803d08e698429ff :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_3803d08e698429ff =
  fmap BG.fromFFIType hs_bindgen_3803d08e698429ff_base

{-# NOINLINE wuffs_base__hasher_bitvec256__vtable_name #-}
{-| __C declaration:__ @wuffs_base__hasher_bitvec256__vtable_name@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6574:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__hasher_bitvec256__vtable_name :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__hasher_bitvec256__vtable_name =
  BG.unsafePerformIO hs_bindgen_3803d08e698429ff

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__image_decoder__vtable_name@
foreign import ccall unsafe "hs_bindgen_5c648dad26c6d376" hs_bindgen_5c648dad26c6d376_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__image_decoder__vtable_name@
hs_bindgen_5c648dad26c6d376 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_5c648dad26c6d376 =
  fmap BG.fromFFIType hs_bindgen_5c648dad26c6d376_base

{-# NOINLINE wuffs_base__image_decoder__vtable_name #-}
{-| __C declaration:__ @wuffs_base__image_decoder__vtable_name@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6681:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__image_decoder__vtable_name :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__image_decoder__vtable_name =
  BG.unsafePerformIO hs_bindgen_5c648dad26c6d376

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__io_transformer__vtable_name@
foreign import ccall unsafe "hs_bindgen_0fde96da33661efa" hs_bindgen_0fde96da33661efa_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__io_transformer__vtable_name@
hs_bindgen_0fde96da33661efa :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_0fde96da33661efa =
  fmap BG.fromFFIType hs_bindgen_0fde96da33661efa_base

{-# NOINLINE wuffs_base__io_transformer__vtable_name #-}
{-| __C declaration:__ @wuffs_base__io_transformer__vtable_name@

    __defined at:__ @wuffs\/wuffs-v0.4.c 6930:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__io_transformer__vtable_name :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__io_transformer__vtable_name =
  BG.unsafePerformIO hs_bindgen_0fde96da33661efa

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__token_decoder__vtable_name@
foreign import ccall unsafe "hs_bindgen_569e17bd13768bef" hs_bindgen_569e17bd13768bef_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_base__token_decoder__vtable_name@
hs_bindgen_569e17bd13768bef :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_569e17bd13768bef =
  fmap BG.fromFFIType hs_bindgen_569e17bd13768bef_base

{-# NOINLINE wuffs_base__token_decoder__vtable_name #-}
{-| __C declaration:__ @wuffs_base__token_decoder__vtable_name@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7039:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_base__token_decoder__vtable_name :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_base__token_decoder__vtable_name =
  BG.unsafePerformIO hs_bindgen_569e17bd13768bef

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bmp__error__bad_header@
foreign import ccall unsafe "hs_bindgen_6735b9025a077fc6" hs_bindgen_6735b9025a077fc6_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bmp__error__bad_header@
hs_bindgen_6735b9025a077fc6 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_6735b9025a077fc6 =
  fmap BG.fromFFIType hs_bindgen_6735b9025a077fc6_base

{-# NOINLINE wuffs_bmp__error__bad_header #-}
{-| __C declaration:__ @wuffs_bmp__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7366:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_bmp__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_bmp__error__bad_header =
  BG.unsafePerformIO hs_bindgen_6735b9025a077fc6

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bmp__error__bad_rle_compression@
foreign import ccall unsafe "hs_bindgen_ffc9c055df6f01cd" hs_bindgen_ffc9c055df6f01cd_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bmp__error__bad_rle_compression@
hs_bindgen_ffc9c055df6f01cd :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_ffc9c055df6f01cd =
  fmap BG.fromFFIType hs_bindgen_ffc9c055df6f01cd_base

{-# NOINLINE wuffs_bmp__error__bad_rle_compression #-}
{-| __C declaration:__ @wuffs_bmp__error__bad_rle_compression@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7367:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_bmp__error__bad_rle_compression :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_bmp__error__bad_rle_compression =
  BG.unsafePerformIO hs_bindgen_ffc9c055df6f01cd

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bmp__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_3aba09369b3ab912" hs_bindgen_3aba09369b3ab912_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bmp__error__truncated_input@
hs_bindgen_3aba09369b3ab912 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_3aba09369b3ab912 =
  fmap BG.fromFFIType hs_bindgen_3aba09369b3ab912_base

{-# NOINLINE wuffs_bmp__error__truncated_input #-}
{-| __C declaration:__ @wuffs_bmp__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7368:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_bmp__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_bmp__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_3aba09369b3ab912

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bmp__error__unsupported_bmp_file@
foreign import ccall unsafe "hs_bindgen_877e6dcb98b461b1" hs_bindgen_877e6dcb98b461b1_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bmp__error__unsupported_bmp_file@
hs_bindgen_877e6dcb98b461b1 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_877e6dcb98b461b1 =
  fmap BG.fromFFIType hs_bindgen_877e6dcb98b461b1_base

{-# NOINLINE wuffs_bmp__error__unsupported_bmp_file #-}
{-| __C declaration:__ @wuffs_bmp__error__unsupported_bmp_file@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7369:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_bmp__error__unsupported_bmp_file :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_bmp__error__unsupported_bmp_file =
  BG.unsafePerformIO hs_bindgen_877e6dcb98b461b1

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_huffman_code_over_subscribed@
foreign import ccall unsafe "hs_bindgen_291dc6677bcc25cf" hs_bindgen_291dc6677bcc25cf_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_huffman_code_over_subscribed@
hs_bindgen_291dc6677bcc25cf :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_291dc6677bcc25cf =
  fmap BG.fromFFIType hs_bindgen_291dc6677bcc25cf_base

{-# NOINLINE wuffs_bzip2__error__bad_huffman_code_over_subscribed #-}
{-| __C declaration:__ @wuffs_bzip2__error__bad_huffman_code_over_subscribed@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7747:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_bzip2__error__bad_huffman_code_over_subscribed :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_bzip2__error__bad_huffman_code_over_subscribed =
  BG.unsafePerformIO hs_bindgen_291dc6677bcc25cf

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_huffman_code_under_subscribed@
foreign import ccall unsafe "hs_bindgen_4bad25f5447916c3" hs_bindgen_4bad25f5447916c3_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_huffman_code_under_subscribed@
hs_bindgen_4bad25f5447916c3 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_4bad25f5447916c3 =
  fmap BG.fromFFIType hs_bindgen_4bad25f5447916c3_base

{-# NOINLINE wuffs_bzip2__error__bad_huffman_code_under_subscribed #-}
{-| __C declaration:__ @wuffs_bzip2__error__bad_huffman_code_under_subscribed@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7748:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_bzip2__error__bad_huffman_code_under_subscribed :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_bzip2__error__bad_huffman_code_under_subscribed =
  BG.unsafePerformIO hs_bindgen_4bad25f5447916c3

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_block_header@
foreign import ccall unsafe "hs_bindgen_544365d9cc1f1280" hs_bindgen_544365d9cc1f1280_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_block_header@
hs_bindgen_544365d9cc1f1280 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_544365d9cc1f1280 =
  fmap BG.fromFFIType hs_bindgen_544365d9cc1f1280_base

{-# NOINLINE wuffs_bzip2__error__bad_block_header #-}
{-| __C declaration:__ @wuffs_bzip2__error__bad_block_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7749:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_bzip2__error__bad_block_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_bzip2__error__bad_block_header =
  BG.unsafePerformIO hs_bindgen_544365d9cc1f1280

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_block_length@
foreign import ccall unsafe "hs_bindgen_4718926ec7d80ab6" hs_bindgen_4718926ec7d80ab6_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_block_length@
hs_bindgen_4718926ec7d80ab6 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_4718926ec7d80ab6 =
  fmap BG.fromFFIType hs_bindgen_4718926ec7d80ab6_base

{-# NOINLINE wuffs_bzip2__error__bad_block_length #-}
{-| __C declaration:__ @wuffs_bzip2__error__bad_block_length@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7750:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_bzip2__error__bad_block_length :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_bzip2__error__bad_block_length =
  BG.unsafePerformIO hs_bindgen_4718926ec7d80ab6

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_checksum@
foreign import ccall unsafe "hs_bindgen_2fdb0edbc6d920f3" hs_bindgen_2fdb0edbc6d920f3_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_checksum@
hs_bindgen_2fdb0edbc6d920f3 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_2fdb0edbc6d920f3 =
  fmap BG.fromFFIType hs_bindgen_2fdb0edbc6d920f3_base

{-# NOINLINE wuffs_bzip2__error__bad_checksum #-}
{-| __C declaration:__ @wuffs_bzip2__error__bad_checksum@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7751:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_bzip2__error__bad_checksum :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_bzip2__error__bad_checksum =
  BG.unsafePerformIO hs_bindgen_2fdb0edbc6d920f3

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_header@
foreign import ccall unsafe "hs_bindgen_f56977bcab751326" hs_bindgen_f56977bcab751326_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_header@
hs_bindgen_f56977bcab751326 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_f56977bcab751326 =
  fmap BG.fromFFIType hs_bindgen_f56977bcab751326_base

{-# NOINLINE wuffs_bzip2__error__bad_header #-}
{-| __C declaration:__ @wuffs_bzip2__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7752:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_bzip2__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_bzip2__error__bad_header =
  BG.unsafePerformIO hs_bindgen_f56977bcab751326

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_number_of_sections@
foreign import ccall unsafe "hs_bindgen_f9ade419489d479c" hs_bindgen_f9ade419489d479c_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__bad_number_of_sections@
hs_bindgen_f9ade419489d479c :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_f9ade419489d479c =
  fmap BG.fromFFIType hs_bindgen_f9ade419489d479c_base

{-# NOINLINE wuffs_bzip2__error__bad_number_of_sections #-}
{-| __C declaration:__ @wuffs_bzip2__error__bad_number_of_sections@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7753:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_bzip2__error__bad_number_of_sections :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_bzip2__error__bad_number_of_sections =
  BG.unsafePerformIO hs_bindgen_f9ade419489d479c

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_e06193b25a5d9fee" hs_bindgen_e06193b25a5d9fee_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__truncated_input@
hs_bindgen_e06193b25a5d9fee :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_e06193b25a5d9fee =
  fmap BG.fromFFIType hs_bindgen_e06193b25a5d9fee_base

{-# NOINLINE wuffs_bzip2__error__truncated_input #-}
{-| __C declaration:__ @wuffs_bzip2__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7754:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_bzip2__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_bzip2__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_e06193b25a5d9fee

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__unsupported_block_randomization@
foreign import ccall unsafe "hs_bindgen_5532cc5e47c47cdb" hs_bindgen_5532cc5e47c47cdb_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_bzip2__error__unsupported_block_randomization@
hs_bindgen_5532cc5e47c47cdb :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_5532cc5e47c47cdb =
  fmap BG.fromFFIType hs_bindgen_5532cc5e47c47cdb_base

{-# NOINLINE wuffs_bzip2__error__unsupported_block_randomization #-}
{-| __C declaration:__ @wuffs_bzip2__error__unsupported_block_randomization@

    __defined at:__ @wuffs\/wuffs-v0.4.c 7755:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_bzip2__error__unsupported_block_randomization :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_bzip2__error__unsupported_block_randomization =
  BG.unsafePerformIO hs_bindgen_5532cc5e47c47cdb

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_cbor__error__bad_input@
foreign import ccall unsafe "hs_bindgen_2828b834bd4b0acb" hs_bindgen_2828b834bd4b0acb_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_cbor__error__bad_input@
hs_bindgen_2828b834bd4b0acb :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_2828b834bd4b0acb =
  fmap BG.fromFFIType hs_bindgen_2828b834bd4b0acb_base

{-# NOINLINE wuffs_cbor__error__bad_input #-}
{-| __C declaration:__ @wuffs_cbor__error__bad_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8044:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_cbor__error__bad_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_cbor__error__bad_input =
  BG.unsafePerformIO hs_bindgen_2828b834bd4b0acb

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_cbor__error__unsupported_recursion_depth@
foreign import ccall unsafe "hs_bindgen_d96279d660804766" hs_bindgen_d96279d660804766_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_cbor__error__unsupported_recursion_depth@
hs_bindgen_d96279d660804766 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_d96279d660804766 =
  fmap BG.fromFFIType hs_bindgen_d96279d660804766_base

{-# NOINLINE wuffs_cbor__error__unsupported_recursion_depth #-}
{-| __C declaration:__ @wuffs_cbor__error__unsupported_recursion_depth@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8045:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_cbor__error__unsupported_recursion_depth :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_cbor__error__unsupported_recursion_depth =
  BG.unsafePerformIO hs_bindgen_d96279d660804766

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code_over_subscribed@
foreign import ccall unsafe "hs_bindgen_914cef069acdd44d" hs_bindgen_914cef069acdd44d_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code_over_subscribed@
hs_bindgen_914cef069acdd44d :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_914cef069acdd44d =
  fmap BG.fromFFIType hs_bindgen_914cef069acdd44d_base

{-# NOINLINE wuffs_deflate__error__bad_huffman_code_over_subscribed #-}
{-| __C declaration:__ @wuffs_deflate__error__bad_huffman_code_over_subscribed@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8730:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_deflate__error__bad_huffman_code_over_subscribed :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_deflate__error__bad_huffman_code_over_subscribed =
  BG.unsafePerformIO hs_bindgen_914cef069acdd44d

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code_under_subscribed@
foreign import ccall unsafe "hs_bindgen_4d4c7f70fa36681a" hs_bindgen_4d4c7f70fa36681a_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code_under_subscribed@
hs_bindgen_4d4c7f70fa36681a :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_4d4c7f70fa36681a =
  fmap BG.fromFFIType hs_bindgen_4d4c7f70fa36681a_base

{-# NOINLINE wuffs_deflate__error__bad_huffman_code_under_subscribed #-}
{-| __C declaration:__ @wuffs_deflate__error__bad_huffman_code_under_subscribed@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8731:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_deflate__error__bad_huffman_code_under_subscribed :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_deflate__error__bad_huffman_code_under_subscribed =
  BG.unsafePerformIO hs_bindgen_4d4c7f70fa36681a

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code_length_count@
foreign import ccall unsafe "hs_bindgen_ee88304006ac8c84" hs_bindgen_ee88304006ac8c84_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code_length_count@
hs_bindgen_ee88304006ac8c84 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_ee88304006ac8c84 =
  fmap BG.fromFFIType hs_bindgen_ee88304006ac8c84_base

{-# NOINLINE wuffs_deflate__error__bad_huffman_code_length_count #-}
{-| __C declaration:__ @wuffs_deflate__error__bad_huffman_code_length_count@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8732:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_deflate__error__bad_huffman_code_length_count :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_deflate__error__bad_huffman_code_length_count =
  BG.unsafePerformIO hs_bindgen_ee88304006ac8c84

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code_length_repetition@
foreign import ccall unsafe "hs_bindgen_2e1a332fa9b0a83c" hs_bindgen_2e1a332fa9b0a83c_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code_length_repetition@
hs_bindgen_2e1a332fa9b0a83c :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_2e1a332fa9b0a83c =
  fmap BG.fromFFIType hs_bindgen_2e1a332fa9b0a83c_base

{-# NOINLINE wuffs_deflate__error__bad_huffman_code_length_repetition #-}
{-| __C declaration:__ @wuffs_deflate__error__bad_huffman_code_length_repetition@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8733:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_deflate__error__bad_huffman_code_length_repetition :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_deflate__error__bad_huffman_code_length_repetition =
  BG.unsafePerformIO hs_bindgen_2e1a332fa9b0a83c

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code@
foreign import ccall unsafe "hs_bindgen_f854d0be012e4d97" hs_bindgen_f854d0be012e4d97_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_code@
hs_bindgen_f854d0be012e4d97 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_f854d0be012e4d97 =
  fmap BG.fromFFIType hs_bindgen_f854d0be012e4d97_base

{-# NOINLINE wuffs_deflate__error__bad_huffman_code #-}
{-| __C declaration:__ @wuffs_deflate__error__bad_huffman_code@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8734:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_deflate__error__bad_huffman_code :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_deflate__error__bad_huffman_code =
  BG.unsafePerformIO hs_bindgen_f854d0be012e4d97

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_minimum_code_length@
foreign import ccall unsafe "hs_bindgen_ebe8eabf61c611e7" hs_bindgen_ebe8eabf61c611e7_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_huffman_minimum_code_length@
hs_bindgen_ebe8eabf61c611e7 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_ebe8eabf61c611e7 =
  fmap BG.fromFFIType hs_bindgen_ebe8eabf61c611e7_base

{-# NOINLINE wuffs_deflate__error__bad_huffman_minimum_code_length #-}
{-| __C declaration:__ @wuffs_deflate__error__bad_huffman_minimum_code_length@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8735:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_deflate__error__bad_huffman_minimum_code_length :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_deflate__error__bad_huffman_minimum_code_length =
  BG.unsafePerformIO hs_bindgen_ebe8eabf61c611e7

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_block@
foreign import ccall unsafe "hs_bindgen_47bbc4cce847fc50" hs_bindgen_47bbc4cce847fc50_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_block@
hs_bindgen_47bbc4cce847fc50 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_47bbc4cce847fc50 =
  fmap BG.fromFFIType hs_bindgen_47bbc4cce847fc50_base

{-# NOINLINE wuffs_deflate__error__bad_block #-}
{-| __C declaration:__ @wuffs_deflate__error__bad_block@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8736:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_deflate__error__bad_block :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_deflate__error__bad_block =
  BG.unsafePerformIO hs_bindgen_47bbc4cce847fc50

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_distance@
foreign import ccall unsafe "hs_bindgen_762c79f8fe59da61" hs_bindgen_762c79f8fe59da61_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_distance@
hs_bindgen_762c79f8fe59da61 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_762c79f8fe59da61 =
  fmap BG.fromFFIType hs_bindgen_762c79f8fe59da61_base

{-# NOINLINE wuffs_deflate__error__bad_distance #-}
{-| __C declaration:__ @wuffs_deflate__error__bad_distance@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8737:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_deflate__error__bad_distance :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_deflate__error__bad_distance =
  BG.unsafePerformIO hs_bindgen_762c79f8fe59da61

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_distance_code_count@
foreign import ccall unsafe "hs_bindgen_c61d0514376a4548" hs_bindgen_c61d0514376a4548_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_distance_code_count@
hs_bindgen_c61d0514376a4548 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_c61d0514376a4548 =
  fmap BG.fromFFIType hs_bindgen_c61d0514376a4548_base

{-# NOINLINE wuffs_deflate__error__bad_distance_code_count #-}
{-| __C declaration:__ @wuffs_deflate__error__bad_distance_code_count@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8738:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_deflate__error__bad_distance_code_count :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_deflate__error__bad_distance_code_count =
  BG.unsafePerformIO hs_bindgen_c61d0514376a4548

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_literal_length_code_count@
foreign import ccall unsafe "hs_bindgen_08da60c7e5609654" hs_bindgen_08da60c7e5609654_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__bad_literal_length_code_count@
hs_bindgen_08da60c7e5609654 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_08da60c7e5609654 =
  fmap BG.fromFFIType hs_bindgen_08da60c7e5609654_base

{-# NOINLINE wuffs_deflate__error__bad_literal_length_code_count #-}
{-| __C declaration:__ @wuffs_deflate__error__bad_literal_length_code_count@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8739:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_deflate__error__bad_literal_length_code_count :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_deflate__error__bad_literal_length_code_count =
  BG.unsafePerformIO hs_bindgen_08da60c7e5609654

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__inconsistent_stored_block_length@
foreign import ccall unsafe "hs_bindgen_c2597141c0d35ecd" hs_bindgen_c2597141c0d35ecd_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__inconsistent_stored_block_length@
hs_bindgen_c2597141c0d35ecd :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_c2597141c0d35ecd =
  fmap BG.fromFFIType hs_bindgen_c2597141c0d35ecd_base

{-# NOINLINE wuffs_deflate__error__inconsistent_stored_block_length #-}
{-| __C declaration:__ @wuffs_deflate__error__inconsistent_stored_block_length@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8740:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_deflate__error__inconsistent_stored_block_length :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_deflate__error__inconsistent_stored_block_length =
  BG.unsafePerformIO hs_bindgen_c2597141c0d35ecd

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__missing_end_of_block_code@
foreign import ccall unsafe "hs_bindgen_f92978eff0d367c1" hs_bindgen_f92978eff0d367c1_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__missing_end_of_block_code@
hs_bindgen_f92978eff0d367c1 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_f92978eff0d367c1 =
  fmap BG.fromFFIType hs_bindgen_f92978eff0d367c1_base

{-# NOINLINE wuffs_deflate__error__missing_end_of_block_code #-}
{-| __C declaration:__ @wuffs_deflate__error__missing_end_of_block_code@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8741:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_deflate__error__missing_end_of_block_code :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_deflate__error__missing_end_of_block_code =
  BG.unsafePerformIO hs_bindgen_f92978eff0d367c1

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__no_huffman_codes@
foreign import ccall unsafe "hs_bindgen_f33082857ce35a04" hs_bindgen_f33082857ce35a04_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__no_huffman_codes@
hs_bindgen_f33082857ce35a04 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_f33082857ce35a04 =
  fmap BG.fromFFIType hs_bindgen_f33082857ce35a04_base

{-# NOINLINE wuffs_deflate__error__no_huffman_codes #-}
{-| __C declaration:__ @wuffs_deflate__error__no_huffman_codes@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8742:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_deflate__error__no_huffman_codes :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_deflate__error__no_huffman_codes =
  BG.unsafePerformIO hs_bindgen_f33082857ce35a04

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_c30437d0bd70cfbf" hs_bindgen_c30437d0bd70cfbf_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_deflate__error__truncated_input@
hs_bindgen_c30437d0bd70cfbf :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_c30437d0bd70cfbf =
  fmap BG.fromFFIType hs_bindgen_c30437d0bd70cfbf_base

{-# NOINLINE wuffs_deflate__error__truncated_input #-}
{-| __C declaration:__ @wuffs_deflate__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 8743:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_deflate__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_deflate__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_c30437d0bd70cfbf

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_etc2__error__bad_header@
foreign import ccall unsafe "hs_bindgen_4405b2044e8f8d05" hs_bindgen_4405b2044e8f8d05_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_etc2__error__bad_header@
hs_bindgen_4405b2044e8f8d05 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_4405b2044e8f8d05 =
  fmap BG.fromFFIType hs_bindgen_4405b2044e8f8d05_base

{-# NOINLINE wuffs_etc2__error__bad_header #-}
{-| __C declaration:__ @wuffs_etc2__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9034:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_etc2__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_etc2__error__bad_header =
  BG.unsafePerformIO hs_bindgen_4405b2044e8f8d05

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_etc2__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_c7a7ae0c8efe2536" hs_bindgen_c7a7ae0c8efe2536_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_etc2__error__truncated_input@
hs_bindgen_c7a7ae0c8efe2536 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_c7a7ae0c8efe2536 =
  fmap BG.fromFFIType hs_bindgen_c7a7ae0c8efe2536_base

{-# NOINLINE wuffs_etc2__error__truncated_input #-}
{-| __C declaration:__ @wuffs_etc2__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9035:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_etc2__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_etc2__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_c7a7ae0c8efe2536

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_etc2__error__unsupported_etc2_file@
foreign import ccall unsafe "hs_bindgen_093360ed3bc944c3" hs_bindgen_093360ed3bc944c3_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_etc2__error__unsupported_etc2_file@
hs_bindgen_093360ed3bc944c3 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_093360ed3bc944c3 =
  fmap BG.fromFFIType hs_bindgen_093360ed3bc944c3_base

{-# NOINLINE wuffs_etc2__error__unsupported_etc2_file #-}
{-| __C declaration:__ @wuffs_etc2__error__unsupported_etc2_file@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9036:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_etc2__error__unsupported_etc2_file :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_etc2__error__unsupported_etc2_file =
  BG.unsafePerformIO hs_bindgen_093360ed3bc944c3

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_lzw_code@
foreign import ccall unsafe "hs_bindgen_9d2faf79f787a4c1" hs_bindgen_9d2faf79f787a4c1_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_lzw_code@
hs_bindgen_9d2faf79f787a4c1 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_9d2faf79f787a4c1 =
  fmap BG.fromFFIType hs_bindgen_9d2faf79f787a4c1_base

{-# NOINLINE wuffs_gif__error__bad_lzw_code #-}
{-| __C declaration:__ @wuffs_gif__error__bad_lzw_code@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9400:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_gif__error__bad_lzw_code :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_gif__error__bad_lzw_code =
  BG.unsafePerformIO hs_bindgen_9d2faf79f787a4c1

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_extension_label@
foreign import ccall unsafe "hs_bindgen_ff7fee8283253d4d" hs_bindgen_ff7fee8283253d4d_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_extension_label@
hs_bindgen_ff7fee8283253d4d :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_ff7fee8283253d4d =
  fmap BG.fromFFIType hs_bindgen_ff7fee8283253d4d_base

{-# NOINLINE wuffs_gif__error__bad_extension_label #-}
{-| __C declaration:__ @wuffs_gif__error__bad_extension_label@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9401:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_gif__error__bad_extension_label :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_gif__error__bad_extension_label =
  BG.unsafePerformIO hs_bindgen_ff7fee8283253d4d

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_frame_size@
foreign import ccall unsafe "hs_bindgen_e1d73f5e11788d4f" hs_bindgen_e1d73f5e11788d4f_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_frame_size@
hs_bindgen_e1d73f5e11788d4f :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_e1d73f5e11788d4f =
  fmap BG.fromFFIType hs_bindgen_e1d73f5e11788d4f_base

{-# NOINLINE wuffs_gif__error__bad_frame_size #-}
{-| __C declaration:__ @wuffs_gif__error__bad_frame_size@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9402:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_gif__error__bad_frame_size :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_gif__error__bad_frame_size =
  BG.unsafePerformIO hs_bindgen_e1d73f5e11788d4f

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_graphic_control@
foreign import ccall unsafe "hs_bindgen_87b450c404ad5b61" hs_bindgen_87b450c404ad5b61_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_graphic_control@
hs_bindgen_87b450c404ad5b61 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_87b450c404ad5b61 =
  fmap BG.fromFFIType hs_bindgen_87b450c404ad5b61_base

{-# NOINLINE wuffs_gif__error__bad_graphic_control #-}
{-| __C declaration:__ @wuffs_gif__error__bad_graphic_control@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9403:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_gif__error__bad_graphic_control :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_gif__error__bad_graphic_control =
  BG.unsafePerformIO hs_bindgen_87b450c404ad5b61

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_header@
foreign import ccall unsafe "hs_bindgen_8a4f4353c63bd6f9" hs_bindgen_8a4f4353c63bd6f9_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_header@
hs_bindgen_8a4f4353c63bd6f9 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_8a4f4353c63bd6f9 =
  fmap BG.fromFFIType hs_bindgen_8a4f4353c63bd6f9_base

{-# NOINLINE wuffs_gif__error__bad_header #-}
{-| __C declaration:__ @wuffs_gif__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9404:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_gif__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_gif__error__bad_header =
  BG.unsafePerformIO hs_bindgen_8a4f4353c63bd6f9

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_literal_width@
foreign import ccall unsafe "hs_bindgen_ee15538ca3134dca" hs_bindgen_ee15538ca3134dca_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_literal_width@
hs_bindgen_ee15538ca3134dca :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_ee15538ca3134dca =
  fmap BG.fromFFIType hs_bindgen_ee15538ca3134dca_base

{-# NOINLINE wuffs_gif__error__bad_literal_width #-}
{-| __C declaration:__ @wuffs_gif__error__bad_literal_width@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9405:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_gif__error__bad_literal_width :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_gif__error__bad_literal_width =
  BG.unsafePerformIO hs_bindgen_ee15538ca3134dca

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_palette@
foreign import ccall unsafe "hs_bindgen_1806373bedc3df33" hs_bindgen_1806373bedc3df33_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__bad_palette@
hs_bindgen_1806373bedc3df33 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_1806373bedc3df33 =
  fmap BG.fromFFIType hs_bindgen_1806373bedc3df33_base

{-# NOINLINE wuffs_gif__error__bad_palette #-}
{-| __C declaration:__ @wuffs_gif__error__bad_palette@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9406:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_gif__error__bad_palette :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_gif__error__bad_palette =
  BG.unsafePerformIO hs_bindgen_1806373bedc3df33

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_ebda1a394d1507fb" hs_bindgen_ebda1a394d1507fb_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gif__error__truncated_input@
hs_bindgen_ebda1a394d1507fb :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_ebda1a394d1507fb =
  fmap BG.fromFFIType hs_bindgen_ebda1a394d1507fb_base

{-# NOINLINE wuffs_gif__error__truncated_input #-}
{-| __C declaration:__ @wuffs_gif__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9407:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_gif__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_gif__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_ebda1a394d1507fb

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__bad_checksum@
foreign import ccall unsafe "hs_bindgen_f912a9fd2d0afb27" hs_bindgen_f912a9fd2d0afb27_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__bad_checksum@
hs_bindgen_f912a9fd2d0afb27 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_f912a9fd2d0afb27 =
  fmap BG.fromFFIType hs_bindgen_f912a9fd2d0afb27_base

{-# NOINLINE wuffs_gzip__error__bad_checksum #-}
{-| __C declaration:__ @wuffs_gzip__error__bad_checksum@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9870:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_gzip__error__bad_checksum :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_gzip__error__bad_checksum =
  BG.unsafePerformIO hs_bindgen_f912a9fd2d0afb27

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__bad_compression_method@
foreign import ccall unsafe "hs_bindgen_2f999336d6e0d17c" hs_bindgen_2f999336d6e0d17c_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__bad_compression_method@
hs_bindgen_2f999336d6e0d17c :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_2f999336d6e0d17c =
  fmap BG.fromFFIType hs_bindgen_2f999336d6e0d17c_base

{-# NOINLINE wuffs_gzip__error__bad_compression_method #-}
{-| __C declaration:__ @wuffs_gzip__error__bad_compression_method@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9871:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_gzip__error__bad_compression_method :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_gzip__error__bad_compression_method =
  BG.unsafePerformIO hs_bindgen_2f999336d6e0d17c

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__bad_encoding_flags@
foreign import ccall unsafe "hs_bindgen_0b06a78d47edd2b6" hs_bindgen_0b06a78d47edd2b6_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__bad_encoding_flags@
hs_bindgen_0b06a78d47edd2b6 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_0b06a78d47edd2b6 =
  fmap BG.fromFFIType hs_bindgen_0b06a78d47edd2b6_base

{-# NOINLINE wuffs_gzip__error__bad_encoding_flags #-}
{-| __C declaration:__ @wuffs_gzip__error__bad_encoding_flags@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9872:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_gzip__error__bad_encoding_flags :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_gzip__error__bad_encoding_flags =
  BG.unsafePerformIO hs_bindgen_0b06a78d47edd2b6

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__bad_header@
foreign import ccall unsafe "hs_bindgen_8328cbbdc2b4a6c0" hs_bindgen_8328cbbdc2b4a6c0_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__bad_header@
hs_bindgen_8328cbbdc2b4a6c0 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_8328cbbdc2b4a6c0 =
  fmap BG.fromFFIType hs_bindgen_8328cbbdc2b4a6c0_base

{-# NOINLINE wuffs_gzip__error__bad_header #-}
{-| __C declaration:__ @wuffs_gzip__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9873:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_gzip__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_gzip__error__bad_header =
  BG.unsafePerformIO hs_bindgen_8328cbbdc2b4a6c0

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_7645447e1429cc34" hs_bindgen_7645447e1429cc34_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_gzip__error__truncated_input@
hs_bindgen_7645447e1429cc34 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_7645447e1429cc34 =
  fmap BG.fromFFIType hs_bindgen_7645447e1429cc34_base

{-# NOINLINE wuffs_gzip__error__truncated_input #-}
{-| __C declaration:__ @wuffs_gzip__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 9874:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_gzip__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_gzip__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_7645447e1429cc34

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_dht_marker@
foreign import ccall unsafe "hs_bindgen_de985da2bc3e8e84" hs_bindgen_de985da2bc3e8e84_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_dht_marker@
hs_bindgen_de985da2bc3e8e84 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_de985da2bc3e8e84 =
  fmap BG.fromFFIType hs_bindgen_de985da2bc3e8e84_base

{-# NOINLINE wuffs_jpeg__error__bad_dht_marker #-}
{-| __C declaration:__ @wuffs_jpeg__error__bad_dht_marker@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10115:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__bad_dht_marker :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__bad_dht_marker =
  BG.unsafePerformIO hs_bindgen_de985da2bc3e8e84

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_dqt_marker@
foreign import ccall unsafe "hs_bindgen_dde0d2f3f1bfa7b6" hs_bindgen_dde0d2f3f1bfa7b6_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_dqt_marker@
hs_bindgen_dde0d2f3f1bfa7b6 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_dde0d2f3f1bfa7b6 =
  fmap BG.fromFFIType hs_bindgen_dde0d2f3f1bfa7b6_base

{-# NOINLINE wuffs_jpeg__error__bad_dqt_marker #-}
{-| __C declaration:__ @wuffs_jpeg__error__bad_dqt_marker@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10116:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__bad_dqt_marker :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__bad_dqt_marker =
  BG.unsafePerformIO hs_bindgen_dde0d2f3f1bfa7b6

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_dri_marker@
foreign import ccall unsafe "hs_bindgen_4f8d5b12b287ced2" hs_bindgen_4f8d5b12b287ced2_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_dri_marker@
hs_bindgen_4f8d5b12b287ced2 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_4f8d5b12b287ced2 =
  fmap BG.fromFFIType hs_bindgen_4f8d5b12b287ced2_base

{-# NOINLINE wuffs_jpeg__error__bad_dri_marker #-}
{-| __C declaration:__ @wuffs_jpeg__error__bad_dri_marker@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10117:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__bad_dri_marker :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__bad_dri_marker =
  BG.unsafePerformIO hs_bindgen_4f8d5b12b287ced2

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_sof_marker@
foreign import ccall unsafe "hs_bindgen_8b00f86fee6cea5e" hs_bindgen_8b00f86fee6cea5e_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_sof_marker@
hs_bindgen_8b00f86fee6cea5e :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_8b00f86fee6cea5e =
  fmap BG.fromFFIType hs_bindgen_8b00f86fee6cea5e_base

{-# NOINLINE wuffs_jpeg__error__bad_sof_marker #-}
{-| __C declaration:__ @wuffs_jpeg__error__bad_sof_marker@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10118:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__bad_sof_marker :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__bad_sof_marker =
  BG.unsafePerformIO hs_bindgen_8b00f86fee6cea5e

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_sos_marker@
foreign import ccall unsafe "hs_bindgen_e41c05ba33e1d11d" hs_bindgen_e41c05ba33e1d11d_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_sos_marker@
hs_bindgen_e41c05ba33e1d11d :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_e41c05ba33e1d11d =
  fmap BG.fromFFIType hs_bindgen_e41c05ba33e1d11d_base

{-# NOINLINE wuffs_jpeg__error__bad_sos_marker #-}
{-| __C declaration:__ @wuffs_jpeg__error__bad_sos_marker@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10119:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__bad_sos_marker :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__bad_sos_marker =
  BG.unsafePerformIO hs_bindgen_e41c05ba33e1d11d

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_header@
foreign import ccall unsafe "hs_bindgen_92920b093e92ec40" hs_bindgen_92920b093e92ec40_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_header@
hs_bindgen_92920b093e92ec40 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_92920b093e92ec40 =
  fmap BG.fromFFIType hs_bindgen_92920b093e92ec40_base

{-# NOINLINE wuffs_jpeg__error__bad_header #-}
{-| __C declaration:__ @wuffs_jpeg__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10120:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__bad_header =
  BG.unsafePerformIO hs_bindgen_92920b093e92ec40

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_marker@
foreign import ccall unsafe "hs_bindgen_3845f3115351c76d" hs_bindgen_3845f3115351c76d_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_marker@
hs_bindgen_3845f3115351c76d :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_3845f3115351c76d =
  fmap BG.fromFFIType hs_bindgen_3845f3115351c76d_base

{-# NOINLINE wuffs_jpeg__error__bad_marker #-}
{-| __C declaration:__ @wuffs_jpeg__error__bad_marker@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10121:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__bad_marker :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__bad_marker =
  BG.unsafePerformIO hs_bindgen_3845f3115351c76d

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_scan_count@
foreign import ccall unsafe "hs_bindgen_8b255daf3f2edaa5" hs_bindgen_8b255daf3f2edaa5_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__bad_scan_count@
hs_bindgen_8b255daf3f2edaa5 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_8b255daf3f2edaa5 =
  fmap BG.fromFFIType hs_bindgen_8b255daf3f2edaa5_base

{-# NOINLINE wuffs_jpeg__error__bad_scan_count #-}
{-| __C declaration:__ @wuffs_jpeg__error__bad_scan_count@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10122:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__bad_scan_count :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__bad_scan_count =
  BG.unsafePerformIO hs_bindgen_8b255daf3f2edaa5

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__missing_huffman_table@
foreign import ccall unsafe "hs_bindgen_ef198f12f24726c3" hs_bindgen_ef198f12f24726c3_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__missing_huffman_table@
hs_bindgen_ef198f12f24726c3 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_ef198f12f24726c3 =
  fmap BG.fromFFIType hs_bindgen_ef198f12f24726c3_base

{-# NOINLINE wuffs_jpeg__error__missing_huffman_table #-}
{-| __C declaration:__ @wuffs_jpeg__error__missing_huffman_table@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10123:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__missing_huffman_table :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__missing_huffman_table =
  BG.unsafePerformIO hs_bindgen_ef198f12f24726c3

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__missing_quantization_table@
foreign import ccall unsafe "hs_bindgen_91fe4f9178b1c872" hs_bindgen_91fe4f9178b1c872_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__missing_quantization_table@
hs_bindgen_91fe4f9178b1c872 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_91fe4f9178b1c872 =
  fmap BG.fromFFIType hs_bindgen_91fe4f9178b1c872_base

{-# NOINLINE wuffs_jpeg__error__missing_quantization_table #-}
{-| __C declaration:__ @wuffs_jpeg__error__missing_quantization_table@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10124:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__missing_quantization_table :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__missing_quantization_table =
  BG.unsafePerformIO hs_bindgen_91fe4f9178b1c872

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__rejected_progressive_jpeg@
foreign import ccall unsafe "hs_bindgen_72ecd045dcb5c7eb" hs_bindgen_72ecd045dcb5c7eb_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__rejected_progressive_jpeg@
hs_bindgen_72ecd045dcb5c7eb :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_72ecd045dcb5c7eb =
  fmap BG.fromFFIType hs_bindgen_72ecd045dcb5c7eb_base

{-# NOINLINE wuffs_jpeg__error__rejected_progressive_jpeg #-}
{-| __C declaration:__ @wuffs_jpeg__error__rejected_progressive_jpeg@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10125:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__rejected_progressive_jpeg :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__rejected_progressive_jpeg =
  BG.unsafePerformIO hs_bindgen_72ecd045dcb5c7eb

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__short_sos_bitstream@
foreign import ccall unsafe "hs_bindgen_66ea2a7e67479d1b" hs_bindgen_66ea2a7e67479d1b_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__short_sos_bitstream@
hs_bindgen_66ea2a7e67479d1b :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_66ea2a7e67479d1b =
  fmap BG.fromFFIType hs_bindgen_66ea2a7e67479d1b_base

{-# NOINLINE wuffs_jpeg__error__short_sos_bitstream #-}
{-| __C declaration:__ @wuffs_jpeg__error__short_sos_bitstream@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10126:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__short_sos_bitstream :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__short_sos_bitstream =
  BG.unsafePerformIO hs_bindgen_66ea2a7e67479d1b

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_5f217b4aa4a9547a" hs_bindgen_5f217b4aa4a9547a_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__truncated_input@
hs_bindgen_5f217b4aa4a9547a :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_5f217b4aa4a9547a =
  fmap BG.fromFFIType hs_bindgen_5f217b4aa4a9547a_base

{-# NOINLINE wuffs_jpeg__error__truncated_input #-}
{-| __C declaration:__ @wuffs_jpeg__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10127:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_5f217b4aa4a9547a

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_arithmetic_coding@
foreign import ccall unsafe "hs_bindgen_d1c83c8c9c704781" hs_bindgen_d1c83c8c9c704781_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_arithmetic_coding@
hs_bindgen_d1c83c8c9c704781 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_d1c83c8c9c704781 =
  fmap BG.fromFFIType hs_bindgen_d1c83c8c9c704781_base

{-# NOINLINE wuffs_jpeg__error__unsupported_arithmetic_coding #-}
{-| __C declaration:__ @wuffs_jpeg__error__unsupported_arithmetic_coding@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10128:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__unsupported_arithmetic_coding :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__unsupported_arithmetic_coding =
  BG.unsafePerformIO hs_bindgen_d1c83c8c9c704781

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_color_model@
foreign import ccall unsafe "hs_bindgen_6687d06bba6ae71f" hs_bindgen_6687d06bba6ae71f_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_color_model@
hs_bindgen_6687d06bba6ae71f :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_6687d06bba6ae71f =
  fmap BG.fromFFIType hs_bindgen_6687d06bba6ae71f_base

{-# NOINLINE wuffs_jpeg__error__unsupported_color_model #-}
{-| __C declaration:__ @wuffs_jpeg__error__unsupported_color_model@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10129:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__unsupported_color_model :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__unsupported_color_model =
  BG.unsafePerformIO hs_bindgen_6687d06bba6ae71f

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_fractional_sampling@
foreign import ccall unsafe "hs_bindgen_49f05c027284ff37" hs_bindgen_49f05c027284ff37_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_fractional_sampling@
hs_bindgen_49f05c027284ff37 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_49f05c027284ff37 =
  fmap BG.fromFFIType hs_bindgen_49f05c027284ff37_base

{-# NOINLINE wuffs_jpeg__error__unsupported_fractional_sampling #-}
{-| __C declaration:__ @wuffs_jpeg__error__unsupported_fractional_sampling@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10130:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__unsupported_fractional_sampling :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__unsupported_fractional_sampling =
  BG.unsafePerformIO hs_bindgen_49f05c027284ff37

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_hierarchical_coding@
foreign import ccall unsafe "hs_bindgen_f3626575658cd9b4" hs_bindgen_f3626575658cd9b4_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_hierarchical_coding@
hs_bindgen_f3626575658cd9b4 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_f3626575658cd9b4 =
  fmap BG.fromFFIType hs_bindgen_f3626575658cd9b4_base

{-# NOINLINE wuffs_jpeg__error__unsupported_hierarchical_coding #-}
{-| __C declaration:__ @wuffs_jpeg__error__unsupported_hierarchical_coding@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10131:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__unsupported_hierarchical_coding :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__unsupported_hierarchical_coding =
  BG.unsafePerformIO hs_bindgen_f3626575658cd9b4

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_implicit_height@
foreign import ccall unsafe "hs_bindgen_faed2b53194c1e8b" hs_bindgen_faed2b53194c1e8b_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_implicit_height@
hs_bindgen_faed2b53194c1e8b :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_faed2b53194c1e8b =
  fmap BG.fromFFIType hs_bindgen_faed2b53194c1e8b_base

{-# NOINLINE wuffs_jpeg__error__unsupported_implicit_height #-}
{-| __C declaration:__ @wuffs_jpeg__error__unsupported_implicit_height@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10132:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__unsupported_implicit_height :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__unsupported_implicit_height =
  BG.unsafePerformIO hs_bindgen_faed2b53194c1e8b

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_lossless_coding@
foreign import ccall unsafe "hs_bindgen_2bf950c9a6d5d599" hs_bindgen_2bf950c9a6d5d599_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_lossless_coding@
hs_bindgen_2bf950c9a6d5d599 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_2bf950c9a6d5d599 =
  fmap BG.fromFFIType hs_bindgen_2bf950c9a6d5d599_base

{-# NOINLINE wuffs_jpeg__error__unsupported_lossless_coding #-}
{-| __C declaration:__ @wuffs_jpeg__error__unsupported_lossless_coding@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10133:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__unsupported_lossless_coding :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__unsupported_lossless_coding =
  BG.unsafePerformIO hs_bindgen_2bf950c9a6d5d599

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_marker@
foreign import ccall unsafe "hs_bindgen_2f3b3264da97676d" hs_bindgen_2f3b3264da97676d_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_marker@
hs_bindgen_2f3b3264da97676d :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_2f3b3264da97676d =
  fmap BG.fromFFIType hs_bindgen_2f3b3264da97676d_base

{-# NOINLINE wuffs_jpeg__error__unsupported_marker #-}
{-| __C declaration:__ @wuffs_jpeg__error__unsupported_marker@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10134:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__unsupported_marker :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__unsupported_marker =
  BG.unsafePerformIO hs_bindgen_2f3b3264da97676d

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_precision_12_bits@
foreign import ccall unsafe "hs_bindgen_a1b1c54bbf1abd02" hs_bindgen_a1b1c54bbf1abd02_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_precision_12_bits@
hs_bindgen_a1b1c54bbf1abd02 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_a1b1c54bbf1abd02 =
  fmap BG.fromFFIType hs_bindgen_a1b1c54bbf1abd02_base

{-# NOINLINE wuffs_jpeg__error__unsupported_precision_12_bits #-}
{-| __C declaration:__ @wuffs_jpeg__error__unsupported_precision_12_bits@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10135:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__unsupported_precision_12_bits :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__unsupported_precision_12_bits =
  BG.unsafePerformIO hs_bindgen_a1b1c54bbf1abd02

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_precision_16_bits@
foreign import ccall unsafe "hs_bindgen_050b2db2ed09f38c" hs_bindgen_050b2db2ed09f38c_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_precision_16_bits@
hs_bindgen_050b2db2ed09f38c :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_050b2db2ed09f38c =
  fmap BG.fromFFIType hs_bindgen_050b2db2ed09f38c_base

{-# NOINLINE wuffs_jpeg__error__unsupported_precision_16_bits #-}
{-| __C declaration:__ @wuffs_jpeg__error__unsupported_precision_16_bits@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10136:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__unsupported_precision_16_bits :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__unsupported_precision_16_bits =
  BG.unsafePerformIO hs_bindgen_050b2db2ed09f38c

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_precision@
foreign import ccall unsafe "hs_bindgen_45f46e2b4d257e99" hs_bindgen_45f46e2b4d257e99_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_precision@
hs_bindgen_45f46e2b4d257e99 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_45f46e2b4d257e99 =
  fmap BG.fromFFIType hs_bindgen_45f46e2b4d257e99_base

{-# NOINLINE wuffs_jpeg__error__unsupported_precision #-}
{-| __C declaration:__ @wuffs_jpeg__error__unsupported_precision@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10137:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__unsupported_precision :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__unsupported_precision =
  BG.unsafePerformIO hs_bindgen_45f46e2b4d257e99

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_scan_count@
foreign import ccall unsafe "hs_bindgen_4c569fda519b451e" hs_bindgen_4c569fda519b451e_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_jpeg__error__unsupported_scan_count@
hs_bindgen_4c569fda519b451e :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_4c569fda519b451e =
  fmap BG.fromFFIType hs_bindgen_4c569fda519b451e_base

{-# NOINLINE wuffs_jpeg__error__unsupported_scan_count #-}
{-| __C declaration:__ @wuffs_jpeg__error__unsupported_scan_count@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10138:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_jpeg__error__unsupported_scan_count :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_jpeg__error__unsupported_scan_count =
  BG.unsafePerformIO hs_bindgen_4c569fda519b451e

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_c0_control_code@
foreign import ccall unsafe "hs_bindgen_61bcbb1f9083f8c2" hs_bindgen_61bcbb1f9083f8c2_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_c0_control_code@
hs_bindgen_61bcbb1f9083f8c2 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_61bcbb1f9083f8c2 =
  fmap BG.fromFFIType hs_bindgen_61bcbb1f9083f8c2_base

{-# NOINLINE wuffs_json__error__bad_c0_control_code #-}
{-| __C declaration:__ @wuffs_json__error__bad_c0_control_code@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10623:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_json__error__bad_c0_control_code :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_json__error__bad_c0_control_code =
  BG.unsafePerformIO hs_bindgen_61bcbb1f9083f8c2

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_utf_8@
foreign import ccall unsafe "hs_bindgen_d471236ec7860af5" hs_bindgen_d471236ec7860af5_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_utf_8@
hs_bindgen_d471236ec7860af5 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_d471236ec7860af5 =
  fmap BG.fromFFIType hs_bindgen_d471236ec7860af5_base

{-# NOINLINE wuffs_json__error__bad_utf_8 #-}
{-| __C declaration:__ @wuffs_json__error__bad_utf_8@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10624:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_json__error__bad_utf_8 :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_json__error__bad_utf_8 =
  BG.unsafePerformIO hs_bindgen_d471236ec7860af5

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_backslash_escape@
foreign import ccall unsafe "hs_bindgen_ff1487645a57f189" hs_bindgen_ff1487645a57f189_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_backslash_escape@
hs_bindgen_ff1487645a57f189 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_ff1487645a57f189 =
  fmap BG.fromFFIType hs_bindgen_ff1487645a57f189_base

{-# NOINLINE wuffs_json__error__bad_backslash_escape #-}
{-| __C declaration:__ @wuffs_json__error__bad_backslash_escape@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10625:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_json__error__bad_backslash_escape :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_json__error__bad_backslash_escape =
  BG.unsafePerformIO hs_bindgen_ff1487645a57f189

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_input@
foreign import ccall unsafe "hs_bindgen_05ce2b499f370f70" hs_bindgen_05ce2b499f370f70_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_input@
hs_bindgen_05ce2b499f370f70 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_05ce2b499f370f70 =
  fmap BG.fromFFIType hs_bindgen_05ce2b499f370f70_base

{-# NOINLINE wuffs_json__error__bad_input #-}
{-| __C declaration:__ @wuffs_json__error__bad_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10626:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_json__error__bad_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_json__error__bad_input =
  BG.unsafePerformIO hs_bindgen_05ce2b499f370f70

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_new_line_in_a_string@
foreign import ccall unsafe "hs_bindgen_e33b4f740db7b7a9" hs_bindgen_e33b4f740db7b7a9_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_new_line_in_a_string@
hs_bindgen_e33b4f740db7b7a9 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_e33b4f740db7b7a9 =
  fmap BG.fromFFIType hs_bindgen_e33b4f740db7b7a9_base

{-# NOINLINE wuffs_json__error__bad_new_line_in_a_string #-}
{-| __C declaration:__ @wuffs_json__error__bad_new_line_in_a_string@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10627:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_json__error__bad_new_line_in_a_string :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_json__error__bad_new_line_in_a_string =
  BG.unsafePerformIO hs_bindgen_e33b4f740db7b7a9

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_quirk_combination@
foreign import ccall unsafe "hs_bindgen_bc72818f3aef61b2" hs_bindgen_bc72818f3aef61b2_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__bad_quirk_combination@
hs_bindgen_bc72818f3aef61b2 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_bc72818f3aef61b2 =
  fmap BG.fromFFIType hs_bindgen_bc72818f3aef61b2_base

{-# NOINLINE wuffs_json__error__bad_quirk_combination #-}
{-| __C declaration:__ @wuffs_json__error__bad_quirk_combination@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10628:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_json__error__bad_quirk_combination :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_json__error__bad_quirk_combination =
  BG.unsafePerformIO hs_bindgen_bc72818f3aef61b2

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__unsupported_number_length@
foreign import ccall unsafe "hs_bindgen_816ae60068df0c4f" hs_bindgen_816ae60068df0c4f_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__unsupported_number_length@
hs_bindgen_816ae60068df0c4f :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_816ae60068df0c4f =
  fmap BG.fromFFIType hs_bindgen_816ae60068df0c4f_base

{-# NOINLINE wuffs_json__error__unsupported_number_length #-}
{-| __C declaration:__ @wuffs_json__error__unsupported_number_length@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10629:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_json__error__unsupported_number_length :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_json__error__unsupported_number_length =
  BG.unsafePerformIO hs_bindgen_816ae60068df0c4f

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__unsupported_recursion_depth@
foreign import ccall unsafe "hs_bindgen_b22376f118498aba" hs_bindgen_b22376f118498aba_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_json__error__unsupported_recursion_depth@
hs_bindgen_b22376f118498aba :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_b22376f118498aba =
  fmap BG.fromFFIType hs_bindgen_b22376f118498aba_base

{-# NOINLINE wuffs_json__error__unsupported_recursion_depth #-}
{-| __C declaration:__ @wuffs_json__error__unsupported_recursion_depth@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10630:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_json__error__unsupported_recursion_depth :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_json__error__unsupported_recursion_depth =
  BG.unsafePerformIO hs_bindgen_b22376f118498aba

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_lzma2_header@
foreign import ccall unsafe "hs_bindgen_94d133c031b006a8" hs_bindgen_94d133c031b006a8_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_lzma2_header@
hs_bindgen_94d133c031b006a8 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_94d133c031b006a8 =
  fmap BG.fromFFIType hs_bindgen_94d133c031b006a8_base

{-# NOINLINE wuffs_lzma__error__bad_lzma2_header #-}
{-| __C declaration:__ @wuffs_lzma__error__bad_lzma2_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10910:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzma__error__bad_lzma2_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzma__error__bad_lzma2_header =
  BG.unsafePerformIO hs_bindgen_94d133c031b006a8

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_bitstream_trailer@
foreign import ccall unsafe "hs_bindgen_3c59587f502e2080" hs_bindgen_3c59587f502e2080_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_bitstream_trailer@
hs_bindgen_3c59587f502e2080 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_3c59587f502e2080 =
  fmap BG.fromFFIType hs_bindgen_3c59587f502e2080_base

{-# NOINLINE wuffs_lzma__error__bad_bitstream_trailer #-}
{-| __C declaration:__ @wuffs_lzma__error__bad_bitstream_trailer@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10911:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzma__error__bad_bitstream_trailer :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzma__error__bad_bitstream_trailer =
  BG.unsafePerformIO hs_bindgen_3c59587f502e2080

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_code@
foreign import ccall unsafe "hs_bindgen_fb1a4313e0c872b6" hs_bindgen_fb1a4313e0c872b6_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_code@
hs_bindgen_fb1a4313e0c872b6 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_fb1a4313e0c872b6 =
  fmap BG.fromFFIType hs_bindgen_fb1a4313e0c872b6_base

{-# NOINLINE wuffs_lzma__error__bad_code #-}
{-| __C declaration:__ @wuffs_lzma__error__bad_code@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10912:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzma__error__bad_code :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzma__error__bad_code =
  BG.unsafePerformIO hs_bindgen_fb1a4313e0c872b6

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_decoded_length@
foreign import ccall unsafe "hs_bindgen_5ea6702c9cce35a7" hs_bindgen_5ea6702c9cce35a7_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_decoded_length@
hs_bindgen_5ea6702c9cce35a7 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_5ea6702c9cce35a7 =
  fmap BG.fromFFIType hs_bindgen_5ea6702c9cce35a7_base

{-# NOINLINE wuffs_lzma__error__bad_decoded_length #-}
{-| __C declaration:__ @wuffs_lzma__error__bad_decoded_length@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10913:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzma__error__bad_decoded_length :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzma__error__bad_decoded_length =
  BG.unsafePerformIO hs_bindgen_5ea6702c9cce35a7

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_distance@
foreign import ccall unsafe "hs_bindgen_5fccf31fdd434751" hs_bindgen_5fccf31fdd434751_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_distance@
hs_bindgen_5fccf31fdd434751 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_5fccf31fdd434751 =
  fmap BG.fromFFIType hs_bindgen_5fccf31fdd434751_base

{-# NOINLINE wuffs_lzma__error__bad_distance #-}
{-| __C declaration:__ @wuffs_lzma__error__bad_distance@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10914:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzma__error__bad_distance :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzma__error__bad_distance =
  BG.unsafePerformIO hs_bindgen_5fccf31fdd434751

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_header@
foreign import ccall unsafe "hs_bindgen_27d4ce73f816576b" hs_bindgen_27d4ce73f816576b_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__bad_header@
hs_bindgen_27d4ce73f816576b :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_27d4ce73f816576b =
  fmap BG.fromFFIType hs_bindgen_27d4ce73f816576b_base

{-# NOINLINE wuffs_lzma__error__bad_header #-}
{-| __C declaration:__ @wuffs_lzma__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10915:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzma__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzma__error__bad_header =
  BG.unsafePerformIO hs_bindgen_27d4ce73f816576b

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_18087d002c13676e" hs_bindgen_18087d002c13676e_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__truncated_input@
hs_bindgen_18087d002c13676e :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_18087d002c13676e =
  fmap BG.fromFFIType hs_bindgen_18087d002c13676e_base

{-# NOINLINE wuffs_lzma__error__truncated_input #-}
{-| __C declaration:__ @wuffs_lzma__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10916:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzma__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzma__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_18087d002c13676e

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__unsupported_decoded_length@
foreign import ccall unsafe "hs_bindgen_0c08b011435b6b4c" hs_bindgen_0c08b011435b6b4c_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__unsupported_decoded_length@
hs_bindgen_0c08b011435b6b4c :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_0c08b011435b6b4c =
  fmap BG.fromFFIType hs_bindgen_0c08b011435b6b4c_base

{-# NOINLINE wuffs_lzma__error__unsupported_decoded_length #-}
{-| __C declaration:__ @wuffs_lzma__error__unsupported_decoded_length@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10917:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzma__error__unsupported_decoded_length :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzma__error__unsupported_decoded_length =
  BG.unsafePerformIO hs_bindgen_0c08b011435b6b4c

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__unsupported_properties@
foreign import ccall unsafe "hs_bindgen_74321fd64856af76" hs_bindgen_74321fd64856af76_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzma__error__unsupported_properties@
hs_bindgen_74321fd64856af76 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_74321fd64856af76 =
  fmap BG.fromFFIType hs_bindgen_74321fd64856af76_base

{-# NOINLINE wuffs_lzma__error__unsupported_properties #-}
{-| __C declaration:__ @wuffs_lzma__error__unsupported_properties@

    __defined at:__ @wuffs\/wuffs-v0.4.c 10918:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzma__error__unsupported_properties :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzma__error__unsupported_properties =
  BG.unsafePerformIO hs_bindgen_74321fd64856af76

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzip__error__bad_checksum@
foreign import ccall unsafe "hs_bindgen_1af351f9a045d92a" hs_bindgen_1af351f9a045d92a_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzip__error__bad_checksum@
hs_bindgen_1af351f9a045d92a :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_1af351f9a045d92a =
  fmap BG.fromFFIType hs_bindgen_1af351f9a045d92a_base

{-# NOINLINE wuffs_lzip__error__bad_checksum #-}
{-| __C declaration:__ @wuffs_lzip__error__bad_checksum@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11236:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzip__error__bad_checksum :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzip__error__bad_checksum =
  BG.unsafePerformIO hs_bindgen_1af351f9a045d92a

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzip__error__bad_footer@
foreign import ccall unsafe "hs_bindgen_bd437753547e3dc4" hs_bindgen_bd437753547e3dc4_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzip__error__bad_footer@
hs_bindgen_bd437753547e3dc4 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_bd437753547e3dc4 =
  fmap BG.fromFFIType hs_bindgen_bd437753547e3dc4_base

{-# NOINLINE wuffs_lzip__error__bad_footer #-}
{-| __C declaration:__ @wuffs_lzip__error__bad_footer@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11237:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzip__error__bad_footer :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzip__error__bad_footer =
  BG.unsafePerformIO hs_bindgen_bd437753547e3dc4

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzip__error__bad_header@
foreign import ccall unsafe "hs_bindgen_27d75fadb1a1a811" hs_bindgen_27d75fadb1a1a811_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzip__error__bad_header@
hs_bindgen_27d75fadb1a1a811 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_27d75fadb1a1a811 =
  fmap BG.fromFFIType hs_bindgen_27d75fadb1a1a811_base

{-# NOINLINE wuffs_lzip__error__bad_header #-}
{-| __C declaration:__ @wuffs_lzip__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11238:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzip__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzip__error__bad_header =
  BG.unsafePerformIO hs_bindgen_27d75fadb1a1a811

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzip__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_fe6890987e2dfbeb" hs_bindgen_fe6890987e2dfbeb_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzip__error__truncated_input@
hs_bindgen_fe6890987e2dfbeb :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_fe6890987e2dfbeb =
  fmap BG.fromFFIType hs_bindgen_fe6890987e2dfbeb_base

{-# NOINLINE wuffs_lzip__error__truncated_input #-}
{-| __C declaration:__ @wuffs_lzip__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11239:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzip__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzip__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_fe6890987e2dfbeb

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzw__error__bad_code@
foreign import ccall unsafe "hs_bindgen_51f9cb031b59405f" hs_bindgen_51f9cb031b59405f_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzw__error__bad_code@
hs_bindgen_51f9cb031b59405f :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_51f9cb031b59405f =
  fmap BG.fromFFIType hs_bindgen_51f9cb031b59405f_base

{-# NOINLINE wuffs_lzw__error__bad_code #-}
{-| __C declaration:__ @wuffs_lzw__error__bad_code@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11478:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzw__error__bad_code :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzw__error__bad_code =
  BG.unsafePerformIO hs_bindgen_51f9cb031b59405f

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzw__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_f0818320ecf21279" hs_bindgen_f0818320ecf21279_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_lzw__error__truncated_input@
hs_bindgen_f0818320ecf21279 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_f0818320ecf21279 =
  fmap BG.fromFFIType hs_bindgen_f0818320ecf21279_base

{-# NOINLINE wuffs_lzw__error__truncated_input #-}
{-| __C declaration:__ @wuffs_lzw__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11479:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_lzw__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_lzw__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_f0818320ecf21279

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_netpbm__error__bad_header@
foreign import ccall unsafe "hs_bindgen_98f82710a8c4c52a" hs_bindgen_98f82710a8c4c52a_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_netpbm__error__bad_header@
hs_bindgen_98f82710a8c4c52a :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_98f82710a8c4c52a =
  fmap BG.fromFFIType hs_bindgen_98f82710a8c4c52a_base

{-# NOINLINE wuffs_netpbm__error__bad_header #-}
{-| __C declaration:__ @wuffs_netpbm__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11737:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_netpbm__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_netpbm__error__bad_header =
  BG.unsafePerformIO hs_bindgen_98f82710a8c4c52a

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_netpbm__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_5e98ce32f722c33e" hs_bindgen_5e98ce32f722c33e_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_netpbm__error__truncated_input@
hs_bindgen_5e98ce32f722c33e :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_5e98ce32f722c33e =
  fmap BG.fromFFIType hs_bindgen_5e98ce32f722c33e_base

{-# NOINLINE wuffs_netpbm__error__truncated_input #-}
{-| __C declaration:__ @wuffs_netpbm__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11738:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_netpbm__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_netpbm__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_5e98ce32f722c33e

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_netpbm__error__unsupported_netpbm_file@
foreign import ccall unsafe "hs_bindgen_c487329b882454e3" hs_bindgen_c487329b882454e3_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_netpbm__error__unsupported_netpbm_file@
hs_bindgen_c487329b882454e3 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_c487329b882454e3 =
  fmap BG.fromFFIType hs_bindgen_c487329b882454e3_base

{-# NOINLINE wuffs_netpbm__error__unsupported_netpbm_file #-}
{-| __C declaration:__ @wuffs_netpbm__error__unsupported_netpbm_file@

    __defined at:__ @wuffs\/wuffs-v0.4.c 11739:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_netpbm__error__unsupported_netpbm_file :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_netpbm__error__unsupported_netpbm_file =
  BG.unsafePerformIO hs_bindgen_c487329b882454e3

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_nie__error__bad_header@
foreign import ccall unsafe "hs_bindgen_5b789fc55d82da90" hs_bindgen_5b789fc55d82da90_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_nie__error__bad_header@
hs_bindgen_5b789fc55d82da90 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_5b789fc55d82da90 =
  fmap BG.fromFFIType hs_bindgen_5b789fc55d82da90_base

{-# NOINLINE wuffs_nie__error__bad_header #-}
{-| __C declaration:__ @wuffs_nie__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12083:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_nie__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_nie__error__bad_header =
  BG.unsafePerformIO hs_bindgen_5b789fc55d82da90

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_nie__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_71cdbfabd559b244" hs_bindgen_71cdbfabd559b244_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_nie__error__truncated_input@
hs_bindgen_71cdbfabd559b244 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_71cdbfabd559b244 =
  fmap BG.fromFFIType hs_bindgen_71cdbfabd559b244_base

{-# NOINLINE wuffs_nie__error__truncated_input #-}
{-| __C declaration:__ @wuffs_nie__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12084:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_nie__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_nie__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_71cdbfabd559b244

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_nie__error__unsupported_nie_file@
foreign import ccall unsafe "hs_bindgen_37bac8e70d746baa" hs_bindgen_37bac8e70d746baa_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_nie__error__unsupported_nie_file@
hs_bindgen_37bac8e70d746baa :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_37bac8e70d746baa =
  fmap BG.fromFFIType hs_bindgen_37bac8e70d746baa_base

{-# NOINLINE wuffs_nie__error__unsupported_nie_file #-}
{-| __C declaration:__ @wuffs_nie__error__unsupported_nie_file@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12085:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_nie__error__unsupported_nie_file :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_nie__error__unsupported_nie_file =
  BG.unsafePerformIO hs_bindgen_37bac8e70d746baa

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__note__dictionary_required@
foreign import ccall unsafe "hs_bindgen_94df86635b63918f" hs_bindgen_94df86635b63918f_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__note__dictionary_required@
hs_bindgen_94df86635b63918f :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_94df86635b63918f =
  fmap BG.fromFFIType hs_bindgen_94df86635b63918f_base

{-# NOINLINE wuffs_zlib__note__dictionary_required #-}
{-| __C declaration:__ @wuffs_zlib__note__dictionary_required@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12433:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_zlib__note__dictionary_required :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_zlib__note__dictionary_required =
  BG.unsafePerformIO hs_bindgen_94df86635b63918f

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__bad_checksum@
foreign import ccall unsafe "hs_bindgen_76f0357fc5f53f64" hs_bindgen_76f0357fc5f53f64_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__bad_checksum@
hs_bindgen_76f0357fc5f53f64 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_76f0357fc5f53f64 =
  fmap BG.fromFFIType hs_bindgen_76f0357fc5f53f64_base

{-# NOINLINE wuffs_zlib__error__bad_checksum #-}
{-| __C declaration:__ @wuffs_zlib__error__bad_checksum@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12434:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_zlib__error__bad_checksum :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_zlib__error__bad_checksum =
  BG.unsafePerformIO hs_bindgen_76f0357fc5f53f64

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__bad_compression_method@
foreign import ccall unsafe "hs_bindgen_f233f815d89bce69" hs_bindgen_f233f815d89bce69_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__bad_compression_method@
hs_bindgen_f233f815d89bce69 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_f233f815d89bce69 =
  fmap BG.fromFFIType hs_bindgen_f233f815d89bce69_base

{-# NOINLINE wuffs_zlib__error__bad_compression_method #-}
{-| __C declaration:__ @wuffs_zlib__error__bad_compression_method@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12435:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_zlib__error__bad_compression_method :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_zlib__error__bad_compression_method =
  BG.unsafePerformIO hs_bindgen_f233f815d89bce69

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__bad_compression_window_size@
foreign import ccall unsafe "hs_bindgen_dc523c3c094ddc34" hs_bindgen_dc523c3c094ddc34_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__bad_compression_window_size@
hs_bindgen_dc523c3c094ddc34 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_dc523c3c094ddc34 =
  fmap BG.fromFFIType hs_bindgen_dc523c3c094ddc34_base

{-# NOINLINE wuffs_zlib__error__bad_compression_window_size #-}
{-| __C declaration:__ @wuffs_zlib__error__bad_compression_window_size@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12436:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_zlib__error__bad_compression_window_size :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_zlib__error__bad_compression_window_size =
  BG.unsafePerformIO hs_bindgen_dc523c3c094ddc34

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__bad_parity_check@
foreign import ccall unsafe "hs_bindgen_46fc4e1071b784dd" hs_bindgen_46fc4e1071b784dd_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__bad_parity_check@
hs_bindgen_46fc4e1071b784dd :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_46fc4e1071b784dd =
  fmap BG.fromFFIType hs_bindgen_46fc4e1071b784dd_base

{-# NOINLINE wuffs_zlib__error__bad_parity_check #-}
{-| __C declaration:__ @wuffs_zlib__error__bad_parity_check@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12437:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_zlib__error__bad_parity_check :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_zlib__error__bad_parity_check =
  BG.unsafePerformIO hs_bindgen_46fc4e1071b784dd

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__incorrect_dictionary@
foreign import ccall unsafe "hs_bindgen_25e2354a38325563" hs_bindgen_25e2354a38325563_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__incorrect_dictionary@
hs_bindgen_25e2354a38325563 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_25e2354a38325563 =
  fmap BG.fromFFIType hs_bindgen_25e2354a38325563_base

{-# NOINLINE wuffs_zlib__error__incorrect_dictionary #-}
{-| __C declaration:__ @wuffs_zlib__error__incorrect_dictionary@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12438:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_zlib__error__incorrect_dictionary :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_zlib__error__incorrect_dictionary =
  BG.unsafePerformIO hs_bindgen_25e2354a38325563

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_851fe2bfb47b9dde" hs_bindgen_851fe2bfb47b9dde_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_zlib__error__truncated_input@
hs_bindgen_851fe2bfb47b9dde :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_851fe2bfb47b9dde =
  fmap BG.fromFFIType hs_bindgen_851fe2bfb47b9dde_base

{-# NOINLINE wuffs_zlib__error__truncated_input #-}
{-| __C declaration:__ @wuffs_zlib__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12439:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_zlib__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_zlib__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_851fe2bfb47b9dde

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_animation_sequence_number@
foreign import ccall unsafe "hs_bindgen_e02dd98137049a8b" hs_bindgen_e02dd98137049a8b_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_animation_sequence_number@
hs_bindgen_e02dd98137049a8b :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_e02dd98137049a8b =
  fmap BG.fromFFIType hs_bindgen_e02dd98137049a8b_base

{-# NOINLINE wuffs_png__error__bad_animation_sequence_number #-}
{-| __C declaration:__ @wuffs_png__error__bad_animation_sequence_number@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12709:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_png__error__bad_animation_sequence_number :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_png__error__bad_animation_sequence_number =
  BG.unsafePerformIO hs_bindgen_e02dd98137049a8b

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_checksum@
foreign import ccall unsafe "hs_bindgen_49f84a009b605cb8" hs_bindgen_49f84a009b605cb8_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_checksum@
hs_bindgen_49f84a009b605cb8 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_49f84a009b605cb8 =
  fmap BG.fromFFIType hs_bindgen_49f84a009b605cb8_base

{-# NOINLINE wuffs_png__error__bad_checksum #-}
{-| __C declaration:__ @wuffs_png__error__bad_checksum@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12710:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_png__error__bad_checksum :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_png__error__bad_checksum =
  BG.unsafePerformIO hs_bindgen_49f84a009b605cb8

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_chunk@
foreign import ccall unsafe "hs_bindgen_6e824a39f04d2c35" hs_bindgen_6e824a39f04d2c35_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_chunk@
hs_bindgen_6e824a39f04d2c35 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_6e824a39f04d2c35 =
  fmap BG.fromFFIType hs_bindgen_6e824a39f04d2c35_base

{-# NOINLINE wuffs_png__error__bad_chunk #-}
{-| __C declaration:__ @wuffs_png__error__bad_chunk@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12711:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_png__error__bad_chunk :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_png__error__bad_chunk =
  BG.unsafePerformIO hs_bindgen_6e824a39f04d2c35

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_filter@
foreign import ccall unsafe "hs_bindgen_8bc5ec9d23d5dfe7" hs_bindgen_8bc5ec9d23d5dfe7_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_filter@
hs_bindgen_8bc5ec9d23d5dfe7 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_8bc5ec9d23d5dfe7 =
  fmap BG.fromFFIType hs_bindgen_8bc5ec9d23d5dfe7_base

{-# NOINLINE wuffs_png__error__bad_filter #-}
{-| __C declaration:__ @wuffs_png__error__bad_filter@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12712:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_png__error__bad_filter :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_png__error__bad_filter =
  BG.unsafePerformIO hs_bindgen_8bc5ec9d23d5dfe7

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_header@
foreign import ccall unsafe "hs_bindgen_281ba0be9e759325" hs_bindgen_281ba0be9e759325_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_header@
hs_bindgen_281ba0be9e759325 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_281ba0be9e759325 =
  fmap BG.fromFFIType hs_bindgen_281ba0be9e759325_base

{-# NOINLINE wuffs_png__error__bad_header #-}
{-| __C declaration:__ @wuffs_png__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12713:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_png__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_png__error__bad_header =
  BG.unsafePerformIO hs_bindgen_281ba0be9e759325

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_text_chunk_not_latin_1@
foreign import ccall unsafe "hs_bindgen_8f189d0bc484b7bf" hs_bindgen_8f189d0bc484b7bf_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__bad_text_chunk_not_latin_1@
hs_bindgen_8f189d0bc484b7bf :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_8f189d0bc484b7bf =
  fmap BG.fromFFIType hs_bindgen_8f189d0bc484b7bf_base

{-# NOINLINE wuffs_png__error__bad_text_chunk_not_latin_1 #-}
{-| __C declaration:__ @wuffs_png__error__bad_text_chunk_not_latin_1@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12714:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_png__error__bad_text_chunk_not_latin_1 :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_png__error__bad_text_chunk_not_latin_1 =
  BG.unsafePerformIO hs_bindgen_8f189d0bc484b7bf

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__missing_palette@
foreign import ccall unsafe "hs_bindgen_62bf75f7bd45e3aa" hs_bindgen_62bf75f7bd45e3aa_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__missing_palette@
hs_bindgen_62bf75f7bd45e3aa :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_62bf75f7bd45e3aa =
  fmap BG.fromFFIType hs_bindgen_62bf75f7bd45e3aa_base

{-# NOINLINE wuffs_png__error__missing_palette #-}
{-| __C declaration:__ @wuffs_png__error__missing_palette@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12715:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_png__error__missing_palette :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_png__error__missing_palette =
  BG.unsafePerformIO hs_bindgen_62bf75f7bd45e3aa

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_755cfff84784efeb" hs_bindgen_755cfff84784efeb_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__truncated_input@
hs_bindgen_755cfff84784efeb :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_755cfff84784efeb =
  fmap BG.fromFFIType hs_bindgen_755cfff84784efeb_base

{-# NOINLINE wuffs_png__error__truncated_input #-}
{-| __C declaration:__ @wuffs_png__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12716:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_png__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_png__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_755cfff84784efeb

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__unsupported_cgbi_extension@
foreign import ccall unsafe "hs_bindgen_5c854914e2012939" hs_bindgen_5c854914e2012939_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__unsupported_cgbi_extension@
hs_bindgen_5c854914e2012939 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_5c854914e2012939 =
  fmap BG.fromFFIType hs_bindgen_5c854914e2012939_base

{-# NOINLINE wuffs_png__error__unsupported_cgbi_extension #-}
{-| __C declaration:__ @wuffs_png__error__unsupported_cgbi_extension@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12717:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_png__error__unsupported_cgbi_extension :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_png__error__unsupported_cgbi_extension =
  BG.unsafePerformIO hs_bindgen_5c854914e2012939

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__unsupported_png_compression_method@
foreign import ccall unsafe "hs_bindgen_81ab464f763d808c" hs_bindgen_81ab464f763d808c_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__unsupported_png_compression_method@
hs_bindgen_81ab464f763d808c :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_81ab464f763d808c =
  fmap BG.fromFFIType hs_bindgen_81ab464f763d808c_base

{-# NOINLINE wuffs_png__error__unsupported_png_compression_method #-}
{-| __C declaration:__ @wuffs_png__error__unsupported_png_compression_method@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12718:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_png__error__unsupported_png_compression_method :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_png__error__unsupported_png_compression_method =
  BG.unsafePerformIO hs_bindgen_81ab464f763d808c

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__unsupported_png_file@
foreign import ccall unsafe "hs_bindgen_93eebd8ee8e6ae67" hs_bindgen_93eebd8ee8e6ae67_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_png__error__unsupported_png_file@
hs_bindgen_93eebd8ee8e6ae67 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_93eebd8ee8e6ae67 =
  fmap BG.fromFFIType hs_bindgen_93eebd8ee8e6ae67_base

{-# NOINLINE wuffs_png__error__unsupported_png_file #-}
{-| __C declaration:__ @wuffs_png__error__unsupported_png_file@

    __defined at:__ @wuffs\/wuffs-v0.4.c 12719:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_png__error__unsupported_png_file :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_png__error__unsupported_png_file =
  BG.unsafePerformIO hs_bindgen_93eebd8ee8e6ae67

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_qoi__error__bad_footer@
foreign import ccall unsafe "hs_bindgen_f75c02ab4e03d4b2" hs_bindgen_f75c02ab4e03d4b2_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_qoi__error__bad_footer@
hs_bindgen_f75c02ab4e03d4b2 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_f75c02ab4e03d4b2 =
  fmap BG.fromFFIType hs_bindgen_f75c02ab4e03d4b2_base

{-# NOINLINE wuffs_qoi__error__bad_footer #-}
{-| __C declaration:__ @wuffs_qoi__error__bad_footer@

    __defined at:__ @wuffs\/wuffs-v0.4.c 13212:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_qoi__error__bad_footer :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_qoi__error__bad_footer =
  BG.unsafePerformIO hs_bindgen_f75c02ab4e03d4b2

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_qoi__error__bad_header@
foreign import ccall unsafe "hs_bindgen_786a4ef80f6ee2ed" hs_bindgen_786a4ef80f6ee2ed_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_qoi__error__bad_header@
hs_bindgen_786a4ef80f6ee2ed :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_786a4ef80f6ee2ed =
  fmap BG.fromFFIType hs_bindgen_786a4ef80f6ee2ed_base

{-# NOINLINE wuffs_qoi__error__bad_header #-}
{-| __C declaration:__ @wuffs_qoi__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 13213:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_qoi__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_qoi__error__bad_header =
  BG.unsafePerformIO hs_bindgen_786a4ef80f6ee2ed

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_qoi__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_80460865e2376097" hs_bindgen_80460865e2376097_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_qoi__error__truncated_input@
hs_bindgen_80460865e2376097 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_80460865e2376097 =
  fmap BG.fromFFIType hs_bindgen_80460865e2376097_base

{-# NOINLINE wuffs_qoi__error__truncated_input #-}
{-| __C declaration:__ @wuffs_qoi__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 13214:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_qoi__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_qoi__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_80460865e2376097

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_targa__error__bad_header@
foreign import ccall unsafe "hs_bindgen_e32f6364890f5f02" hs_bindgen_e32f6364890f5f02_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_targa__error__bad_header@
hs_bindgen_e32f6364890f5f02 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_e32f6364890f5f02 =
  fmap BG.fromFFIType hs_bindgen_e32f6364890f5f02_base

{-# NOINLINE wuffs_targa__error__bad_header #-}
{-| __C declaration:__ @wuffs_targa__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 13808:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_targa__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_targa__error__bad_header =
  BG.unsafePerformIO hs_bindgen_e32f6364890f5f02

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_targa__error__bad_run_length_encoding@
foreign import ccall unsafe "hs_bindgen_42848077c419328c" hs_bindgen_42848077c419328c_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_targa__error__bad_run_length_encoding@
hs_bindgen_42848077c419328c :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_42848077c419328c =
  fmap BG.fromFFIType hs_bindgen_42848077c419328c_base

{-# NOINLINE wuffs_targa__error__bad_run_length_encoding #-}
{-| __C declaration:__ @wuffs_targa__error__bad_run_length_encoding@

    __defined at:__ @wuffs\/wuffs-v0.4.c 13809:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_targa__error__bad_run_length_encoding :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_targa__error__bad_run_length_encoding =
  BG.unsafePerformIO hs_bindgen_42848077c419328c

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_targa__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_ed562bc47495ac18" hs_bindgen_ed562bc47495ac18_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_targa__error__truncated_input@
hs_bindgen_ed562bc47495ac18 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_ed562bc47495ac18 =
  fmap BG.fromFFIType hs_bindgen_ed562bc47495ac18_base

{-# NOINLINE wuffs_targa__error__truncated_input #-}
{-| __C declaration:__ @wuffs_targa__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 13810:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_targa__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_targa__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_ed562bc47495ac18

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_targa__error__unsupported_targa_file@
foreign import ccall unsafe "hs_bindgen_88e19f2e919d2b02" hs_bindgen_88e19f2e919d2b02_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_targa__error__unsupported_targa_file@
hs_bindgen_88e19f2e919d2b02 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_88e19f2e919d2b02 =
  fmap BG.fromFFIType hs_bindgen_88e19f2e919d2b02_base

{-# NOINLINE wuffs_targa__error__unsupported_targa_file #-}
{-| __C declaration:__ @wuffs_targa__error__unsupported_targa_file@

    __defined at:__ @wuffs\/wuffs-v0.4.c 13811:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_targa__error__unsupported_targa_file :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_targa__error__unsupported_targa_file =
  BG.unsafePerformIO hs_bindgen_88e19f2e919d2b02

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_thumbhash__error__bad_header@
foreign import ccall unsafe "hs_bindgen_0ce032eb542eb03c" hs_bindgen_0ce032eb542eb03c_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_thumbhash__error__bad_header@
hs_bindgen_0ce032eb542eb03c :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_0ce032eb542eb03c =
  fmap BG.fromFFIType hs_bindgen_0ce032eb542eb03c_base

{-# NOINLINE wuffs_thumbhash__error__bad_header #-}
{-| __C declaration:__ @wuffs_thumbhash__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 14185:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_thumbhash__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_thumbhash__error__bad_header =
  BG.unsafePerformIO hs_bindgen_0ce032eb542eb03c

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_thumbhash__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_2c46afcac967a005" hs_bindgen_2c46afcac967a005_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_thumbhash__error__truncated_input@
hs_bindgen_2c46afcac967a005 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_2c46afcac967a005 =
  fmap BG.fromFFIType hs_bindgen_2c46afcac967a005_base

{-# NOINLINE wuffs_thumbhash__error__truncated_input #-}
{-| __C declaration:__ @wuffs_thumbhash__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 14186:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_thumbhash__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_thumbhash__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_2c46afcac967a005

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_wbmp__error__bad_header@
foreign import ccall unsafe "hs_bindgen_a830c732ca382ee4" hs_bindgen_a830c732ca382ee4_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_wbmp__error__bad_header@
hs_bindgen_a830c732ca382ee4 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_a830c732ca382ee4 =
  fmap BG.fromFFIType hs_bindgen_a830c732ca382ee4_base

{-# NOINLINE wuffs_wbmp__error__bad_header #-}
{-| __C declaration:__ @wuffs_wbmp__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 14696:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_wbmp__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_wbmp__error__bad_header =
  BG.unsafePerformIO hs_bindgen_a830c732ca382ee4

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_wbmp__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_7472af83e71a8288" hs_bindgen_7472af83e71a8288_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_wbmp__error__truncated_input@
hs_bindgen_7472af83e71a8288 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_7472af83e71a8288 =
  fmap BG.fromFFIType hs_bindgen_7472af83e71a8288_base

{-# NOINLINE wuffs_wbmp__error__truncated_input #-}
{-| __C declaration:__ @wuffs_wbmp__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 14697:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_wbmp__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_wbmp__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_7472af83e71a8288

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_huffman_code_over_subscribed@
foreign import ccall unsafe "hs_bindgen_32fa00af94eb731d" hs_bindgen_32fa00af94eb731d_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_huffman_code_over_subscribed@
hs_bindgen_32fa00af94eb731d :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_32fa00af94eb731d =
  fmap BG.fromFFIType hs_bindgen_32fa00af94eb731d_base

{-# NOINLINE wuffs_webp__error__bad_huffman_code_over_subscribed #-}
{-| __C declaration:__ @wuffs_webp__error__bad_huffman_code_over_subscribed@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15051:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_webp__error__bad_huffman_code_over_subscribed :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_webp__error__bad_huffman_code_over_subscribed =
  BG.unsafePerformIO hs_bindgen_32fa00af94eb731d

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_huffman_code_under_subscribed@
foreign import ccall unsafe "hs_bindgen_97d8d7a8f9f8ea68" hs_bindgen_97d8d7a8f9f8ea68_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_huffman_code_under_subscribed@
hs_bindgen_97d8d7a8f9f8ea68 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_97d8d7a8f9f8ea68 =
  fmap BG.fromFFIType hs_bindgen_97d8d7a8f9f8ea68_base

{-# NOINLINE wuffs_webp__error__bad_huffman_code_under_subscribed #-}
{-| __C declaration:__ @wuffs_webp__error__bad_huffman_code_under_subscribed@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15052:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_webp__error__bad_huffman_code_under_subscribed :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_webp__error__bad_huffman_code_under_subscribed =
  BG.unsafePerformIO hs_bindgen_97d8d7a8f9f8ea68

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_huffman_code@
foreign import ccall unsafe "hs_bindgen_0fe9fc7f829357b2" hs_bindgen_0fe9fc7f829357b2_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_huffman_code@
hs_bindgen_0fe9fc7f829357b2 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_0fe9fc7f829357b2 =
  fmap BG.fromFFIType hs_bindgen_0fe9fc7f829357b2_base

{-# NOINLINE wuffs_webp__error__bad_huffman_code #-}
{-| __C declaration:__ @wuffs_webp__error__bad_huffman_code@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15053:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_webp__error__bad_huffman_code :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_webp__error__bad_huffman_code =
  BG.unsafePerformIO hs_bindgen_0fe9fc7f829357b2

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_back_reference@
foreign import ccall unsafe "hs_bindgen_5a49a0a9a5d80609" hs_bindgen_5a49a0a9a5d80609_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_back_reference@
hs_bindgen_5a49a0a9a5d80609 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_5a49a0a9a5d80609 =
  fmap BG.fromFFIType hs_bindgen_5a49a0a9a5d80609_base

{-# NOINLINE wuffs_webp__error__bad_back_reference #-}
{-| __C declaration:__ @wuffs_webp__error__bad_back_reference@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15054:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_webp__error__bad_back_reference :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_webp__error__bad_back_reference =
  BG.unsafePerformIO hs_bindgen_5a49a0a9a5d80609

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_color_cache@
foreign import ccall unsafe "hs_bindgen_e0bfd210aff39bf4" hs_bindgen_e0bfd210aff39bf4_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_color_cache@
hs_bindgen_e0bfd210aff39bf4 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_e0bfd210aff39bf4 =
  fmap BG.fromFFIType hs_bindgen_e0bfd210aff39bf4_base

{-# NOINLINE wuffs_webp__error__bad_color_cache #-}
{-| __C declaration:__ @wuffs_webp__error__bad_color_cache@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15055:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_webp__error__bad_color_cache :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_webp__error__bad_color_cache =
  BG.unsafePerformIO hs_bindgen_e0bfd210aff39bf4

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_header@
foreign import ccall unsafe "hs_bindgen_4647d7dee373ef90" hs_bindgen_4647d7dee373ef90_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_header@
hs_bindgen_4647d7dee373ef90 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_4647d7dee373ef90 =
  fmap BG.fromFFIType hs_bindgen_4647d7dee373ef90_base

{-# NOINLINE wuffs_webp__error__bad_header #-}
{-| __C declaration:__ @wuffs_webp__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15056:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_webp__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_webp__error__bad_header =
  BG.unsafePerformIO hs_bindgen_4647d7dee373ef90

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_transform@
foreign import ccall unsafe "hs_bindgen_ecf0012f971eb3fb" hs_bindgen_ecf0012f971eb3fb_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__bad_transform@
hs_bindgen_ecf0012f971eb3fb :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_ecf0012f971eb3fb =
  fmap BG.fromFFIType hs_bindgen_ecf0012f971eb3fb_base

{-# NOINLINE wuffs_webp__error__bad_transform #-}
{-| __C declaration:__ @wuffs_webp__error__bad_transform@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15057:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_webp__error__bad_transform :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_webp__error__bad_transform =
  BG.unsafePerformIO hs_bindgen_ecf0012f971eb3fb

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__short_chunk@
foreign import ccall unsafe "hs_bindgen_9e84dee3f104a0ff" hs_bindgen_9e84dee3f104a0ff_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__short_chunk@
hs_bindgen_9e84dee3f104a0ff :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_9e84dee3f104a0ff =
  fmap BG.fromFFIType hs_bindgen_9e84dee3f104a0ff_base

{-# NOINLINE wuffs_webp__error__short_chunk #-}
{-| __C declaration:__ @wuffs_webp__error__short_chunk@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15058:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_webp__error__short_chunk :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_webp__error__short_chunk =
  BG.unsafePerformIO hs_bindgen_9e84dee3f104a0ff

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_fa31044547748624" hs_bindgen_fa31044547748624_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__truncated_input@
hs_bindgen_fa31044547748624 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_fa31044547748624 =
  fmap BG.fromFFIType hs_bindgen_fa31044547748624_base

{-# NOINLINE wuffs_webp__error__truncated_input #-}
{-| __C declaration:__ @wuffs_webp__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15059:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_webp__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_webp__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_fa31044547748624

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__unsupported_number_of_huffman_groups@
foreign import ccall unsafe "hs_bindgen_4737eb0cc06fb4c2" hs_bindgen_4737eb0cc06fb4c2_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__unsupported_number_of_huffman_groups@
hs_bindgen_4737eb0cc06fb4c2 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_4737eb0cc06fb4c2 =
  fmap BG.fromFFIType hs_bindgen_4737eb0cc06fb4c2_base

{-# NOINLINE wuffs_webp__error__unsupported_number_of_huffman_groups #-}
{-| __C declaration:__ @wuffs_webp__error__unsupported_number_of_huffman_groups@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15060:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_webp__error__unsupported_number_of_huffman_groups :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_webp__error__unsupported_number_of_huffman_groups =
  BG.unsafePerformIO hs_bindgen_4737eb0cc06fb4c2

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__unsupported_transform_after_color_indexing_transform@
foreign import ccall unsafe "hs_bindgen_c56d6cf59733c5ce" hs_bindgen_c56d6cf59733c5ce_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__unsupported_transform_after_color_indexing_transform@
hs_bindgen_c56d6cf59733c5ce :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_c56d6cf59733c5ce =
  fmap BG.fromFFIType hs_bindgen_c56d6cf59733c5ce_base

{-# NOINLINE wuffs_webp__error__unsupported_transform_after_color_indexing_transform #-}
{-| __C declaration:__ @wuffs_webp__error__unsupported_transform_after_color_indexing_transform@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15061:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_webp__error__unsupported_transform_after_color_indexing_transform :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_webp__error__unsupported_transform_after_color_indexing_transform =
  BG.unsafePerformIO hs_bindgen_c56d6cf59733c5ce

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__unsupported_webp_file@
foreign import ccall unsafe "hs_bindgen_01b3fd272a86a9f5" hs_bindgen_01b3fd272a86a9f5_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_webp__error__unsupported_webp_file@
hs_bindgen_01b3fd272a86a9f5 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_01b3fd272a86a9f5 =
  fmap BG.fromFFIType hs_bindgen_01b3fd272a86a9f5_base

{-# NOINLINE wuffs_webp__error__unsupported_webp_file #-}
{-| __C declaration:__ @wuffs_webp__error__unsupported_webp_file@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15062:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_webp__error__unsupported_webp_file :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_webp__error__unsupported_webp_file =
  BG.unsafePerformIO hs_bindgen_01b3fd272a86a9f5

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_bcj_offset@
foreign import ccall unsafe "hs_bindgen_5474ca94d0805efa" hs_bindgen_5474ca94d0805efa_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_bcj_offset@
hs_bindgen_5474ca94d0805efa :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_5474ca94d0805efa =
  fmap BG.fromFFIType hs_bindgen_5474ca94d0805efa_base

{-# NOINLINE wuffs_xz__error__bad_bcj_offset #-}
{-| __C declaration:__ @wuffs_xz__error__bad_bcj_offset@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15956:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_xz__error__bad_bcj_offset :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_xz__error__bad_bcj_offset =
  BG.unsafePerformIO hs_bindgen_5474ca94d0805efa

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_block_header@
foreign import ccall unsafe "hs_bindgen_9733934f23578a01" hs_bindgen_9733934f23578a01_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_block_header@
hs_bindgen_9733934f23578a01 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_9733934f23578a01 =
  fmap BG.fromFFIType hs_bindgen_9733934f23578a01_base

{-# NOINLINE wuffs_xz__error__bad_block_header #-}
{-| __C declaration:__ @wuffs_xz__error__bad_block_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15957:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_xz__error__bad_block_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_xz__error__bad_block_header =
  BG.unsafePerformIO hs_bindgen_9733934f23578a01

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_checksum@
foreign import ccall unsafe "hs_bindgen_5e2de6d4078a1c7d" hs_bindgen_5e2de6d4078a1c7d_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_checksum@
hs_bindgen_5e2de6d4078a1c7d :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_5e2de6d4078a1c7d =
  fmap BG.fromFFIType hs_bindgen_5e2de6d4078a1c7d_base

{-# NOINLINE wuffs_xz__error__bad_checksum #-}
{-| __C declaration:__ @wuffs_xz__error__bad_checksum@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15958:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_xz__error__bad_checksum :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_xz__error__bad_checksum =
  BG.unsafePerformIO hs_bindgen_5e2de6d4078a1c7d

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_filter@
foreign import ccall unsafe "hs_bindgen_d01bbe76156bbcf5" hs_bindgen_d01bbe76156bbcf5_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_filter@
hs_bindgen_d01bbe76156bbcf5 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_d01bbe76156bbcf5 =
  fmap BG.fromFFIType hs_bindgen_d01bbe76156bbcf5_base

{-# NOINLINE wuffs_xz__error__bad_filter #-}
{-| __C declaration:__ @wuffs_xz__error__bad_filter@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15959:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_xz__error__bad_filter :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_xz__error__bad_filter =
  BG.unsafePerformIO hs_bindgen_d01bbe76156bbcf5

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_footer@
foreign import ccall unsafe "hs_bindgen_f67827fc437f323e" hs_bindgen_f67827fc437f323e_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_footer@
hs_bindgen_f67827fc437f323e :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_f67827fc437f323e =
  fmap BG.fromFFIType hs_bindgen_f67827fc437f323e_base

{-# NOINLINE wuffs_xz__error__bad_footer #-}
{-| __C declaration:__ @wuffs_xz__error__bad_footer@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15960:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_xz__error__bad_footer :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_xz__error__bad_footer =
  BG.unsafePerformIO hs_bindgen_f67827fc437f323e

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_header@
foreign import ccall unsafe "hs_bindgen_5513fddb09055a38" hs_bindgen_5513fddb09055a38_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_header@
hs_bindgen_5513fddb09055a38 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_5513fddb09055a38 =
  fmap BG.fromFFIType hs_bindgen_5513fddb09055a38_base

{-# NOINLINE wuffs_xz__error__bad_header #-}
{-| __C declaration:__ @wuffs_xz__error__bad_header@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15961:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_xz__error__bad_header :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_xz__error__bad_header =
  BG.unsafePerformIO hs_bindgen_5513fddb09055a38

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_header_concatenated_stream@
foreign import ccall unsafe "hs_bindgen_84e410fc1d06f166" hs_bindgen_84e410fc1d06f166_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_header_concatenated_stream@
hs_bindgen_84e410fc1d06f166 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_84e410fc1d06f166 =
  fmap BG.fromFFIType hs_bindgen_84e410fc1d06f166_base

{-# NOINLINE wuffs_xz__error__bad_header_concatenated_stream #-}
{-| __C declaration:__ @wuffs_xz__error__bad_header_concatenated_stream@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15962:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_xz__error__bad_header_concatenated_stream :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_xz__error__bad_header_concatenated_stream =
  BG.unsafePerformIO hs_bindgen_84e410fc1d06f166

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_index@
foreign import ccall unsafe "hs_bindgen_5e6a370732ecfa96" hs_bindgen_5e6a370732ecfa96_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_index@
hs_bindgen_5e6a370732ecfa96 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_5e6a370732ecfa96 =
  fmap BG.fromFFIType hs_bindgen_5e6a370732ecfa96_base

{-# NOINLINE wuffs_xz__error__bad_index #-}
{-| __C declaration:__ @wuffs_xz__error__bad_index@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15963:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_xz__error__bad_index :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_xz__error__bad_index =
  BG.unsafePerformIO hs_bindgen_5e6a370732ecfa96

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_padding@
foreign import ccall unsafe "hs_bindgen_6f633fd05ab69f62" hs_bindgen_6f633fd05ab69f62_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__bad_padding@
hs_bindgen_6f633fd05ab69f62 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_6f633fd05ab69f62 =
  fmap BG.fromFFIType hs_bindgen_6f633fd05ab69f62_base

{-# NOINLINE wuffs_xz__error__bad_padding #-}
{-| __C declaration:__ @wuffs_xz__error__bad_padding@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15964:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_xz__error__bad_padding :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_xz__error__bad_padding =
  BG.unsafePerformIO hs_bindgen_6f633fd05ab69f62

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__truncated_input@
foreign import ccall unsafe "hs_bindgen_06769c009d33eb46" hs_bindgen_06769c009d33eb46_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__truncated_input@
hs_bindgen_06769c009d33eb46 :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_06769c009d33eb46 =
  fmap BG.fromFFIType hs_bindgen_06769c009d33eb46_base

{-# NOINLINE wuffs_xz__error__truncated_input #-}
{-| __C declaration:__ @wuffs_xz__error__truncated_input@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15965:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_xz__error__truncated_input :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_xz__error__truncated_input =
  BG.unsafePerformIO hs_bindgen_06769c009d33eb46

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__unsupported_checksum_algorithm@
foreign import ccall unsafe "hs_bindgen_1c2d38dbcf5b302e" hs_bindgen_1c2d38dbcf5b302e_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__unsupported_checksum_algorithm@
hs_bindgen_1c2d38dbcf5b302e :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_1c2d38dbcf5b302e =
  fmap BG.fromFFIType hs_bindgen_1c2d38dbcf5b302e_base

{-# NOINLINE wuffs_xz__error__unsupported_checksum_algorithm #-}
{-| __C declaration:__ @wuffs_xz__error__unsupported_checksum_algorithm@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15966:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_xz__error__unsupported_checksum_algorithm :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_xz__error__unsupported_checksum_algorithm =
  BG.unsafePerformIO hs_bindgen_1c2d38dbcf5b302e

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__unsupported_filter@
foreign import ccall unsafe "hs_bindgen_5782e833cc09ca2b" hs_bindgen_5782e833cc09ca2b_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__unsupported_filter@
hs_bindgen_5782e833cc09ca2b :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_5782e833cc09ca2b =
  fmap BG.fromFFIType hs_bindgen_5782e833cc09ca2b_base

{-# NOINLINE wuffs_xz__error__unsupported_filter #-}
{-| __C declaration:__ @wuffs_xz__error__unsupported_filter@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15967:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_xz__error__unsupported_filter :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_xz__error__unsupported_filter =
  BG.unsafePerformIO hs_bindgen_5782e833cc09ca2b

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__unsupported_filter_combination@
foreign import ccall unsafe "hs_bindgen_02a992604823c35b" hs_bindgen_02a992604823c35b_base ::
     IO (BG.Ptr BG.Void)

-- __unique:__ @org_wuffshs_Codec.Wuffs.Bindings.Generated_get_wuffs_xz__error__unsupported_filter_combination@
hs_bindgen_02a992604823c35b :: IO (PtrConst.PtrConst (IA.IncompleteArray BG.CChar))
hs_bindgen_02a992604823c35b =
  fmap BG.fromFFIType hs_bindgen_02a992604823c35b_base

{-# NOINLINE wuffs_xz__error__unsupported_filter_combination #-}
{-| __C declaration:__ @wuffs_xz__error__unsupported_filter_combination@

    __defined at:__ @wuffs\/wuffs-v0.4.c 15968:19@

    __exported by:__ @wuffs\/wuffs-v0.4.c@
-}
wuffs_xz__error__unsupported_filter_combination :: PtrConst.PtrConst (IA.IncompleteArray BG.CChar)
wuffs_xz__error__unsupported_filter_combination =
  BG.unsafePerformIO hs_bindgen_02a992604823c35b
