check-flake:
  nom flake check --no-build

hls-debug:
  haskell-language-server --debug 2> hls.log
