kind: cmake
sources:
- kind: tar
  url: github_com:libical/libical/releases/download/v3.0.3/libical-3.0.3.tar.gz
depends:
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/perl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
