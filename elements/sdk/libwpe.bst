kind: cmake
sources:
- kind: tar
  url: https://wpewebkit.org/releases/libwpe-1.9.1.tar.xz
  ref: ac1470f9811e74a5f9b063e25d27ed9e274a74078c65fbdcc6f6e3c590010bb8
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
