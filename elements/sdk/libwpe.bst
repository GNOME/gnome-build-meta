kind: cmake
sources:
- kind: tar
  url: github_com:WebPlatformForEmbedded/libwpe/releases/download/1.4.0.1/libwpe-1.4.0.1.tar.xz
  ref: 09849dfb34877354f34f318e138971cf22e677b2179e1f0a8ea00ab0b7bd8e9b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libwpe-1.0.so'
