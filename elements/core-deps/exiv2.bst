kind: cmake
sources:
- kind: tar
  url: github_com:Exiv2/exiv2/archive/v0.26.tar.gz
depends:
- filename: base/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
