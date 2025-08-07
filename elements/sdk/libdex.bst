kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.11/libdex-0.11.1.tar.xz
  ref: 94250a2d83e6f73d3ac8972f1a438015236a465b56cb005e0e6bfb9d4948739f
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
