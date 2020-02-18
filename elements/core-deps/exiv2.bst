kind: cmake
sources:
- kind: tar
  url: github_com:Exiv2/exiv2/archive/v0.26.tar.gz
  ref: 51cffa8d19d67e1da6c1d0f570a75b8f6c814113367318c2c0407691888c5f01
depends:
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
