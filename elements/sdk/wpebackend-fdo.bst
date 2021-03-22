kind: cmake
sources:
- kind: tar
  url: https://wpewebkit.org/releases/wpebackend-fdo-1.8.2.tar.xz
  ref: 98c291071128326a72918d670a46ef63268c43267928560ac3b84b6aebb2d78d
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
