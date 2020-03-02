kind: cmake
sources:
- kind: tar
  url: github_com:WebPlatformForEmbedded/libwpe/releases/download/1.5.90/libwpe-1.5.90.tar.xz
  ref: 6e6e26f8c98267c33f926c03a7f280a0d21c3f713f95a38ef302ca3a6253c350
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
