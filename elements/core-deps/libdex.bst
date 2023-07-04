kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.3/libdex-0.3.0.tar.xz
  ref: 88bfd633d266d481a3289a75b0fe0a3eb9e7ea9355f65fa3c69f7b0f68ffc580
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/liburing.bst
- sdk/glib.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddocs=true
    -Dsysprof=true
