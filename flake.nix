{
  description = "Haskell bindings for wuffs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-parts.inputs.nixpkgs-lib.follows = "nixpkgs";

    nix-wasm.url = "github:ners/nix-wasm";
    nix-wasm.inputs.nixpkgs.follows = "nixpkgs";

    hs-bindgen.url = "github:well-typed/hs-bindgen";
    hs-bindgen.inputs.nixpkgs.follows = "nixpkgs";
    hs-bindgen.inputs.flake-parts.follows = "flake-parts";
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    flake-parts,
    hs-bindgen,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "wasm32-unknown-wasi"
        "wasm32-wasi"
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      perSystem = {system, ...}: let
        hl = pkgs.haskell.lib.compose;
        pkgs = import inputs.nixpkgs {
          inherit system;
          overlays = [hs-bindgen.overlays.default];
        };

        ####### WASM STUFF
        wasiSDK = inputs.nix-wasm.inputs.ghc-wasm-meta.packages.${system}.wasi-sdk;

        wasmPkgs = inputs.nix-wasm.legacyPackages.${system};
        wasmGHC = wasmPkgs.haskell.packages.ghc914.extend (
          hfinal: hprev: let
          in {
            # Required by c-expr-runtime
            libclang-bindings = wasmPkgs.haskell.lib.dontCheck (
              wasmPkgs.haskell.lib.overrideCabal
              (hfinal.callHackageDirect {
                  pkg = "libclang-bindings";
                  ver = "0.1.0.0";
                  sha256 = "sha256-86mlwAEp/EUUAzWPQ0ui9h9XqHYda78p4J2dhdfhrxw=";
                } {
                  # libclang = hprev.llvmPackages.libclang;
                })
              (drv: {
                buildTools =
                  (drv.buildTools or [])
                  ++ [wasmPkgs.buildPackages.llvmPackages.llvm];
                extraLibraries =
                  (drv.extraLibraries or [])
                  ++ [wasmPkgs.buildPackages.llvmPackages.libclang];
              })
            );
            # Fetch c-expr-runtime directly from Hackage
            c-expr-runtime = hfinal.callHackageDirect {
              pkg = "c-expr-runtime";
              ver = "0.1.0.0";
              sha256 = "sha256-/Yt7KsrF96ce0FA7Rnl2sn/uWQ4p2C55mIHjAzwlzbQ=";
            } {};

            # Fetch hs-bindgen-runtime directly from Hackage
            hs-bindgen-runtime =
              hfinal.callCabal2nix
              "hs-bindgen-runtime" "${inputs.hs-bindgen}/hs-bindgen-runtime" {};
          }
        );
        wasmWuffsHS = wasmGHC.callCabal2nix "wuffs-hs" (pkgs.lib.cleanSource ./.) {
          wuffs = wuffsWASM;
        };
        wasmCabal = pkgs.writeShellScriptBin "wasm-cabal" ''
          if [ $# -eq 0 ]; then
              echo "Error: No cabal command provided."
              echo "Usage: wasm-cabal <command> [args...]"
              echo "Example: wasm-cabal build my-app-frontend"
              exit 1
          fi
          COMMAND="$1"
          shift
          wasm32-wasi-cabal "$COMMAND" \
            --project-file=./cabal.wasm.project \
            --extra-lib-dirs="$WUFFS_WASI_LIB" \
            --extra-include-dirs="$WUFFS_WASI_INCLUDE" "$@"
        '';
        wasmTest = pkgs.writeShellScriptBin "wasm-test" ''
          CABAL_TARGET="$1"
          [[ -z "$CABAL_TARGET" ]] && { echo "Usage: $BIN_NAME <cabal-test-target>"; exit 1; }

          ${wasmCabal}/bin/wasm-cabal build "$CABAL_TARGET" || exit 1
          WASM_FILE=$(wasm32-wasi-cabal list-bin -v0 "$CABAL_TARGET")

          ${pkgs.wasmtime}/bin/wasmtime --dir=. --dir=/tmp::/tmp "$WASM_FILE"
        '';
        wuffsWASM = (import ./nix/wuffs.nix) {
          pkgs = wasmPkgs;
          isWASM = true;
          wasiSDK = wasiSDK;
        };

        ####### NON WASM
        wuffs = (import ./nix/wuffs.nix) {
          pkgs = pkgs;
          isWASM = false;
        };
        wuffsHS = ghc.callCabal2nix "wuffs-hs" (pkgs.lib.cleanSource ./.) {
          wuffs = wuffs;
        };
        ghc = pkgs.haskell.packages.ghc912.extend (
          hfinal: hprev: {
            c-expr-runtime = hfinal.callHackageDirect {
              pkg = "c-expr-runtime";
              ver = "0.1.0.0";
              sha256 = "sha256-/Yt7KsrF96ce0FA7Rnl2sn/uWQ4p2C55mIHjAzwlzbQ=";
            } {};

            # Fetch hs-bindgen-runtime from another repo as it's not on hackage yet
            hs-bindgen-runtime =
              hfinal.callCabal2nix
              "hs-bindgen-runtime" "${inputs.hs-bindgen}/hs-bindgen-runtime" {
              };
          }
        );
      in {
        packages = {
          default = wuffsHS;
          wasm = wasmPkgs.lib.pipe wasmWuffsHS [
            # hl.enableStaticLibraries
            hl.disableSharedLibraries
            hl.disableSharedExecutables
          ];
        };

        checks = {
          check-default = self.packages.${system}.default;
          check-wasm = self.packages.${system}.wasm;
        };

        devShells.wasm = wasmGHC.shellFor {
          env = {
            WASI_SDK_PATH = wasiSDK;
            WUFFS_WASI_INCLUDE = "${wuffsWASM}/include";
            WUFFS_WASI_LIB = "${wuffsWASM}/lib";
          };
          packages = ps: [wasmWuffsHS];
          nativeBuildInputs = [
            pkgs.cabal-install
            pkgs.hs-bindgen-cli
            pkgs.hsBindgenHook
            pkgs.wasmtime
            wasmPkgs.cabal-install
            wasmTest
            wasmCabal
            wasmPkgs.pkg-config
            # pkgs.clang # for generate-bindings.hs
            wasiSDK
            # wasmPkgs.cmake
          ];
          buildInputs = [
            wuffsWASM
          ];
        };
        devShells.default = ghc.shellFor {
          packages = ps: [wuffsHS];
          nativeBuildInputs = with ghc; [
            haskell-language-server
            implicit-hie
            cabal-install
            cabal-fmt
            pkgs.hs-bindgen-cli
            # Connect `hs-bindgen` to the Clang toolchain and `wuffs`.
            # Fixes [Error] [Libclang] [clang] unable to resolve #include <....h>:
            pkgs.hsBindgenHook
            pkgs.pkg-config # IMPORTANT: must be only in the native shell
            # pkgs.wuffs
          ];
          buildInputs = [wuffs];
          # make hls happy about missing .so files
          shellHook = ''
            export LD_LIBRARY_PATH=${pkgs.lib.makeLibraryPath [wuffs]}:$LD_LIBRARY_PATH
          '';
        };
      };
    };
}
