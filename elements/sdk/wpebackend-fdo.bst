kind: cmake
sources:
- kind: tar
  url: https://wpewebkit.org/releases/wpebackend-fdo-1.8.4.tar.xz
  ref: def59bed5e8cdabb65ffa76ee2eef349fba7b42a75dac80f3da5954b17f4074a
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
