kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.5/libdex-0.5.0.tar.xz
  ref: 64431dd4de29e31120faea18f9947c6b720f2cf6b6ac92eaeeeda1714ce5d7a3
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/liburing.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddocs=true
    -Dsysprof=true
