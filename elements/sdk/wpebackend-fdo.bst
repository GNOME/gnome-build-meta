kind: cmake
sources:
- kind: tar
  url: github_com:Igalia/WPEBackend-fdo/releases/download/1.5.90/wpebackend-fdo-1.5.90.tar.xz
  ref: 34d55e7d28235a03aa69beb283daf23fffe8f1953f47a8d8b9247e0d3eb97e4f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
