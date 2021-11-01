kind: meson
sources:
- kind: tar
  url: https://wpewebkit.org/releases/wpebackend-fdo-1.12.0.tar.xz
  ref: 6239c9c15523410798d66315de6b491712ab30009ba180f3e0dd076d9b0074ac
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
