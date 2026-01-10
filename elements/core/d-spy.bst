kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/50/d-spy-50.alpha.tar.xz
  ref: f144bebf34829a8ad714fa9406786a99d151dcb2dba0179d3ad027f7a5863530
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
