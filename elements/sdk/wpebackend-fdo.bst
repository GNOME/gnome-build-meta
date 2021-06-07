kind: meson

sources:
- kind: tar
  url: https://wpewebkit.org/releases/wpebackend-fdo-1.9.92.tar.xz
  ref: fc5b388a91d6f2c22803e1a21a6759a314b4539e5169c6e272bfc953a05fbb85
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/libwpe.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
