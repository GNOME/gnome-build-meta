kind: cmake
sources:
- kind: tar
  url: https://wpewebkit.org/releases/wpebackend-fdo-1.8.3.tar.xz
  ref: 3d0b4282a1bd9e0664d7a20abe14e982f3285296ac62de56cae2a404b9d28b9e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
