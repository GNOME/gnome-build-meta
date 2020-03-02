kind: cmake
sources:
- kind: tar
  url: github_com:Igalia/WPEBackend-fdo/releases/download/1.5.90/wpebackend-fdo-1.5.90.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
