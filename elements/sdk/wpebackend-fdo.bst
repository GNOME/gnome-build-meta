kind: cmake
sources:
- kind: tar
  url: github_com:Igalia/WPEBackend-fdo/releases/download/1.4.0/wpebackend-fdo-1.4.0.tar.xz
  ref: a919ca4a5bc445f9419a5b7f3781cfc98e5abcf5d7259eb1869f5ab20fd18baf
depends:
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/mesa-headers.bst
  junction: freedesktop-sdk.bst
- filename: components/wayland.bst
  junction: freedesktop-sdk.bst
- sdk/glib.bst
- sdk/libwpe.bst
