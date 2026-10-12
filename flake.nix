{
  description = "Haskell bindings for wuffs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nix-wasm.url = "github:ners/nix-wasm";
    hs-bindgen.url = "github:well-typed/hs-bindgen";
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    flake-parts,
    hs-bindgen,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = nixpkgs.lib.systems.flakeExposed;
      perSystem = {system, ...}: let
        pkgs = import inputs.nixpkgs {
          inherit system;
          overlays = [hs-bindgen.overlays.default];
        };

        # WASM STUFF
        wasiSDK = inputs.nix-wasm.inputs.ghc-wasm-meta.packages.${system}.wasi-sdk;

        hsBindgenRepo = wasmPkgs.fetchFromGitHub {
          owner = "well-typed";
          repo = "hs-bindgen";
          rev = "0ef05fd1895e569c01bf9aa2236f9ce137a00205";
          sha256 = "sha256-BZJJoj3bmJTHkQ6s908S5puC9/uNpRe9RKUfEN0XZN8=";
        };
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
              hfinal.callCabal2nix "hs-bindgen-runtime" "${hsBindgenRepo}/hs-bindgen-runtime" {};
          }
        );
        wasmWuffsHS =
          wasmGHC.callCabal2nix "wuffs-hs" (pkgs.lib.cleanSource ./.) {};
        wasmTest = pkgs.writeShellScriptBin "wasm-test" ''
          CABAL_TARGET="$1"
          [[ -z "$CABAL_TARGET" ]] && { echo "Usage: $BIN_NAME <cabal-test-target>"; exit 1; }

          wasm32-wasi-cabal build "$CABAL_TARGET" || exit 1
          WASM_FILE=$(wasm32-wasi-cabal list-bin -v0 "$CABAL_TARGET")

          ${pkgs.wasmtime}/bin/wasmtime --dir=. --dir=/tmp::/tmp "$WASM_FILE"
        '';

        ### NON WASM
        wuffsHS = ghc.callCabal2nix "wuffs-hs" (pkgs.lib.cleanSource ./.) {};
        ghc = pkgs.haskell.packages.ghc912.extend (
          hfinal: hprev: {
            c-expr-runtime = hfinal.callHackageDirect {
              pkg = "c-expr-runtime";
              ver = "0.1.0.0";
              sha256 = "sha256-/Yt7KsrF96ce0FA7Rnl2sn/uWQ4p2C55mIHjAzwlzbQ=";
            } {};

            # Fetch hs-bindgen-runtime from another repo as it's not on hackage yet
            hs-bindgen-runtime =
              hfinal.callCabal2nix "hs-bindgen-runtime" "${hsBindgenRepo}/hs-bindgen-runtime" {};
          }
        );
      in {
        packages = {
          default = wuffsHS;
          wasm = wasmWuffsHS;
        };

        checks = {
          check-default = self.packages.${system}.default;
          check-wasm = self.packages.${system}.wasm;
        };

        # devShells.wasm = pkgs.mkShell {
        #   WASI_SDK_PATH = wasiSDK;
        #   inputsFrom = [
        #     (wasmGHC.shellFor {
        #       packages = ps: [wasmWuffsHS];
        #       nativeBuildInputs = [
        #         pkgs.cabal-install
        #         pkgs.hs-bindgen-cli
        #         pkgs.hsBindgenHook
        #         pkgs.pkg-config
        #         pkgs.wasmtime
        #         wasmPkgs.clang
        #         wasmPkgs.cabal-install
        #         wasmTest
        #         wasmPkgs.cmake
        #       ];
        #       buildInputs = [
        #         # libheif-wasi
        #       ];
        #     })
        #   ];
        # };
        devShells.default = pkgs.mkShell {
          WASI_SDK_PATH = wasiSDK;
          inputsFrom = [
            (wasmGHC.shellFor {
              packages = ps: [wasmWuffsHS];
              nativeBuildInputs = [
                pkgs.cabal-install
                pkgs.hs-bindgen-cli
                pkgs.hsBindgenHook
                pkgs.pkg-config
                pkgs.wasmtime
                wasmPkgs.clang
                wasmPkgs.cabal-install
                wasmTest
                wasmPkgs.cmake
              ];
              buildInputs = [
                # libheif-wasi
              ];
            })

            # Thanks to this we can use hls
            (ghc.shellFor {
              packages = ps: [wuffsHS];
              nativeBuildInputs = with ghc; [
                haskell-language-server
                implicit-hie
                cabal-install
                cabal-fmt
                pkgs.hs-bindgen-cli
                # Connect `hs-bindgen` to the Clang toolchain and `libheif`.
                # Fixes [Error] [Libclang] [clang] unable to resolve #include <libheif/heif.h>:
                pkgs.hsBindgenHook
                # pkgs.pkg-config
              ];
              buildInputs = [];
            })
          ];
        };
      };
    };
}
