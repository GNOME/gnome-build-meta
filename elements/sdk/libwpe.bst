kind: cmake
sources:
- kind: tar
  url: github_com:WebPlatformForEmbedded/libwpe/releases/download/1.3.1/libwpe-1.3.1.tar.xz
depends:
- filename: desktop/libxkbcommon.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mesa.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
