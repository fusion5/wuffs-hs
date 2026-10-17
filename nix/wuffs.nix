# We package wuffs in a separate derivation, because the one in nixpkgs contains the
# language tools as well.
{
  pkgs,
  isWASM ? false,
  wasiSDK ? null,
}: let
  wuffsVersion = "0.4.0-alpha.10";
  wuffsLibFile = "wuffs-unsupported-snapshot.c";
  wuffsPcTemplate = pkgs.writeText "wuffs.pc.in" ''
    prefix=@out@
    exec_prefix=''${prefix}
    libdir=''${prefix}/lib
    includedir=''${prefix}/include

    Name: wuffs
    Description: Wrangling Untrusted File Formats Safely
    Version: @version@
    Libs: -L''${libdir} -lwuffs
    Cflags: -I''${includedir}
  '';
in
  pkgs.stdenv.mkDerivation {
    pname =
      if isWASM
      then "wuffs-wasi"
      else "wuffs";
    meta = {
      platforms =
        if isWASM
        then ["wasm32-unknown-wasi" "wasm32-wasi"]
        else pkgs.lib.platforms.all;
    };
    version = wuffsVersion;
    src = pkgs.fetchFromGitHub {
      owner = "google";
      repo = "wuffs";
      tag = "v${wuffsVersion}";
      hash = "sha256-b7O2mGrn2AChVVnmfiTyG1OGUJnETFSU3wK5AlCNja0=";
    };
    nativeBuildInputs =
      [pkgs.pkg-config] ++ pkgs.lib.optional isWASM wasiSDK;
    buildPhase = ''
      runHook preBuild
      WUFFS_C="release/c/${wuffsLibFile}"
      $CC -O3 -c "$WUFFS_C" -o wuffs.o -DWUFFS_IMPLEMENTATION
      $AR rcs libwuffs.a wuffs.o
      runHook postBuild
    '';

    installPhase = ''
      runHook preInstall
      mkdir -p "$out/lib/pkgconfig" "$out/include/wuffs"
      cp libwuffs.a "$out/lib/"
      cp release/c/${wuffsLibFile} "$out/include/wuffs/"
      substituteAll ${wuffsPcTemplate} "$out/lib/pkgconfig/wuffs.pc"
      runHook postInstall
    '';
    dontFixup = true;
  }
