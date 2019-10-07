kind: cmake
sources:
- kind: tar
  url: github_com:WebPlatformForEmbedded/libwpe/releases/download/1.4.0.1/libwpe-1.4.0.1.tar.xz
depends:
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/libxkbcommon.bst
  junction: freedesktop-sdk.bst
- filename: components/mesa-headers.bst
  junction: freedesktop-sdk.bst
