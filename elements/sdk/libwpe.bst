kind: cmake
sources:
- kind: tar
  url: https://wpewebkit.org/releases/libwpe-1.10.1.tar.xz
  ref: a327b3ffcf2356dbe8148c1db4bbdc5359d7e7163d177f67551a8393b144adf0
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
