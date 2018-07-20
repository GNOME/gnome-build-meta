kind: cmake
sources:
- kind: tar
  url: github_com:google/woff2/archive/v1.0.2.tar.gz
  ref: add272bb09e6384a4833ffca4896350fdb16e0ca22df68c0384773c67a175594
depends:
- core-deps/brotli.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
