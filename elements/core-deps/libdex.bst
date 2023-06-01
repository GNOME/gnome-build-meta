kind: meson

sources:
- kind: git_tag
  url: gnome:libdex.git
  track: main
  ref: 0.2.0-14-g5e765ea6e5e5af37c0b67b3cdffeaf7e613e860f

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
