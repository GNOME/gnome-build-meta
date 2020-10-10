kind: cmake

sources:
- kind: tar
  url: https://wpewebkit.org/releases/wpebackend-fdo-1.8.0.tar.xz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
