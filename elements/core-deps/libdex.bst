kind: meson

sources:
- kind: git_tag
  url: gnome:libdex.git
  track: main
  ref: 0.2.0-1-g374316d1564476b1735db27daea2c298de68fbb4

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
