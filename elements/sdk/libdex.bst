kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.11/libdex-0.11.0.tar.xz
  ref: ae58f47564aab94593e102027c78befc14cf976b5cd3a09926d5e72b7c484e6f
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
