kind: meson

sources:
- kind: tar
  url: gnome_downloads:libdex/0.6/libdex-0.6.0.tar.xz
  ref: 1e88d2b00628e586b723b7fba515cce9752faf12122cde5a3c0d5b883998522a
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
