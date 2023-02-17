kind: meson

sources:
- kind: tar
  url: gnome_gitlab:chergert/libdex/uploads/8894d387768d3b8375b5d1121988c35a/libdex-0.1.0.tar.xz
  ref: 2d2275e19a834d51eb0903e0d61d6317a458f5eaaca070b796d6eacdb842628e

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
