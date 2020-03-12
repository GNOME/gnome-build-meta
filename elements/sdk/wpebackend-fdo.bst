kind: cmake
sources:
- kind: tar
  url: github_com:Igalia/WPEBackend-fdo/releases/download/1.6.0/wpebackend-fdo-1.6.0.tar.xz
  ref: 7f5bd7b9d8f97b1655f4dcd39fad92719d0fb3985b251da5802df13aaa09f567
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
