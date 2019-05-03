kind: cmake
sources:
- kind: tar
  url: github_com:Exiv2/exiv2/archive/v0.26.tar.gz
depends:
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
