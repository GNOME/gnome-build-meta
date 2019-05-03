kind: cmake
sources:
- kind: tar
  url: github_com:libical/libical/releases/download/v3.0.3/libical-3.0.3.tar.gz
depends:
- filename: base/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/perl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
