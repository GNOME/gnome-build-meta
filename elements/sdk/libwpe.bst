kind: cmake
sources:
- kind: tar
  url: github_com:WebPlatformForEmbedded/libwpe/releases/download/1.4.0.1/libwpe-1.4.0.1.tar.xz
  ref: 09849dfb34877354f34f318e138971cf22e677b2179e1f0a8ea00ab0b7bd8e9b
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
