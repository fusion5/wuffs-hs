#!/usr/bin/env bash

# Command line flags affecting module generation.
module_flags=(
    # C has a global namespace. Providing a unique ID ensures the C wrappers
    # have unique names.
    --unique-id org.wuffs-hs
    # Base output directory of generated bindings.
    --hs-output-dir src-native
    --create-output-dirs
    --overwrite-files
    # Base module name. 
    --module Codec.Wuffs.Bindings.Generated
    # --prescriptive-binding-spec bindings.yaml
)

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
    -v2
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
