kind: cmake
sources:
- kind: tar
  url: https://wpewebkit.org/releases/libwpe-1.11.1.tar.xz
  ref: 71fec3e65f2aac29fde3dde692a7f502d7c0a58995169493e0efb9ee3c9d1477
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
