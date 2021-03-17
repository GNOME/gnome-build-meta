kind: cmake

sources:
- kind: tar
  url: https://wpewebkit.org/releases/libwpe-1.9.91.tar.xz

  ref: 1d389f29ab1946669cf244ad621ff92b84ff8bcd9294df677444a0d876714196
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
