#!/usr/bin/env bash

: "${WASI_SDK_PATH:?Error: WASI_SDK_PATH is not set or empty. Please run this script from the wasm nix shell}"

case "$1" in
  "wasm" | "native")
    echo "Target set to: $1"
    ;;
  *)
    echo "Error: Argument must be either 'wasm' or 'native'." >&2
    echo "Usage: $0 <wasm|native>" >&2
    exit 1
    ;;
esac

module_flags=(
    --unique-id org.wuffs-hs
    --hs-output-dir "src-$1"
    --create-output-dirs
    --overwrite-files
    --module Codec.Wuffs.Bindings.Generated
)

if [[ "$1" == "wasm" ]]; then
    module_flags+=(
        --clang-option="-isystem"
        --clang-option="$WASI_SDK_PATH/share/wasi-sysroot/include/wasm32-wasi"
        -I "$WUFFS_WASI_INCLUDE"
    )
fi

# We only generate bindings for a sub-set of all parsed/reified declarations.
# These flags configure the selection step.
select_flags=(
    --select-by-header-path wuffs-v0.4.c
    # --select-by-decl-name '^heif_' 
    # Select transitive dependencies.
    --enable-program-slicing
    # De-select deprecated declarations.
    --select-except-deprecated
    # We could manually de-select some declarations. 
    # --select-except-by-decl-name 'pcap_open'
    # --select-except-by-decl-name 'pcap_createsrcstr'
    # --select-except-by-decl-name 'pcap_parsesrcstr'
    # --select-except-by-decl-name 'pcap_findalldevs_ex'
    # --select-except-by-decl-name 'pcap_setsampling'
    # --select-except-by-decl-name 'pcap_remoteact'
)

# Increase the verbosity of `hs-bindgen` to learn something about its internals.
# For example, activate Info-level log messages to see which declarations are
# selected/not selected, or which C macros we succeed or fail to parse.
debug_flags=(
    # -v2
    # # Run `hs-bindgen` with log level "Info".
    # -v3
    # # Run `hs-bindgen` with log level "Debug".
    # -v4
)

hs-bindgen-cli preprocess \
      "${module_flags[@]}" \
      "${select_flags[@]}" \
      "${debug_flags[@]}" \
      "wuffs/wuffs-v0.4.c"
