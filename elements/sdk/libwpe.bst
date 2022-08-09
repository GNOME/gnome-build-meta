kind: cmake
sources:
- kind: tar
  url: https://wpewebkit.org/releases/libwpe-1.12.2.tar.xz
  ref: 4ac4fd0a8b562b721bffd0f46ae9f06c2b5a3114407581978be875a9d651642a
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
