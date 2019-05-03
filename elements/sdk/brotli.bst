kind: cmake
sources:
- kind: tar
  url: github_com:google/brotli/archive/v1.0.5.tar.gz
depends:
- filename: base/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
