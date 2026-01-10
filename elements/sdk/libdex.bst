kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/1.1/libdex-1.1.alpha.tar.xz
  ref: 5a50c38c39df77cd765fe0b404ab3d3aa65998a48642c054a460a479ee03f7b5
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/liburing.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Ddocs=true
    -Dsysprof=true
