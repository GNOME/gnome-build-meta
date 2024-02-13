kind: cmake
sources:
- kind: tar
  url: wpewebkit:libwpe-1.14.2.tar.xz
  ref: 8ae38022c50cb340c96fdbee1217f1e46ab57fbc1c8ba98142565abbedbe22ef
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
