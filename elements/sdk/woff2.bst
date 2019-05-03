kind: cmake
sources:
- kind: tar
  url: github_com:google/woff2/archive/v1.0.2.tar.gz
depends:
- sdk/brotli.bst
- filename: base/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
