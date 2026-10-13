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

        wuffsWASMTraced = builtins.trace "wuffsWASM store path: ${wuffsWASM.outPath}" wuffsWASM;
        wuffsWASM = wasmPkgs.stdenv.mkDerivation {
          pname = "wuffs-wasi";
          meta = {
            platforms = ["wasm32-unknown-wasi" "wasm32-wasi"];
          };
          version = pkgs.wuffs.version;
          src = pkgs.wuffs.src;
          nativeBuildInputs = [
            wasiSDK
            # wasmPkgs.cmake
            wasmPkgs.pkg-config
          ];
          buildPhase = ''
            runHook preBuild

            # Find the single-file C release file
            WUFFS_C=$(ls release/c/wuffs-v*.c | head -n 1)

            # Compile the WASI object file with implementation defined
            $CC -O3 -c "$WUFFS_C" -o wuffs.o -DWUFFS_IMPLEMENTATION

            # Archive into static library
            $AR rcs libwuffs.a wuffs.o

            runHook postBuild
          '';

          installPhase = ''
            runHook preInstall

            # Create the wuffs/ subdirectory under include
            mkdir -p $out/lib $out/include/wuffs

            cp libwuffs.a $out/lib/
            cp release/c/wuffs-v*.c $out/include/wuffs/

            runHook postInstall
          '';
          dontFixup = true;
        };

        ### NON WASM
        wuffsHS = ghc.callCabal2nix "wuffs-hs" (pkgs.lib.cleanSource ./.) {
          wuffs = pkgs.wuffs.dev;
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
          wasm = wasmWuffsHS;
        };

        checks = {
          check-default = self.packages.${system}.default;
          check-wasm = self.packages.${system}.wasm;
        };

        devShells.default = pkgs.mkShell {
          env = {
            WASI_SDK_PATH = wasiSDK;
            WUFFS_WASI_INCLUDE = "${wuffsWASM}/include";
            WUFFS_WASI_LIB = "${wuffsWASM}/lib";
          };
          inputsFrom = [
            # Thanks to this we can use hls. IMPORTANT: must be before the wasm shellFor
            (ghc.shellFor {
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
                pkgs.wuffs
              ];
              buildInputs = [];
            })
            (wasmGHC.shellFor {
              packages = ps: [wasmWuffsHS];
              nativeBuildInputs = [
                pkgs.cabal-install
                pkgs.hs-bindgen-cli
                pkgs.hsBindgenHook
                pkgs.wasmtime
                wasmPkgs.cabal-install
                wasmTest
                wasmCabal
                # IMPORTANT: must not be present otherwise cabal picks it up and cabal test doesn't work anymore
                # wasmPkgs.clang
                # pkgs.pkg-config
                # wasmPkgs.cmake
              ];
              buildInputs = [
                wuffsWASMTraced
                # wasmPkgs.wuffs
                # TODO: add wuffs-wasi?
              ];
            })
          ];
          # packages = with pkgs; [
          #   wuffs
          # ];
        };
      };
    };
}
