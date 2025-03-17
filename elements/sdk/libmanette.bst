kind: meson
sources:
- kind: tar
  url: gnome_downloads:libmanette/0.2/libmanette-0.2.11.tar.xz
  ref: b812b94e08632ba62a30960a8de29217a73a2fff5da2f12acc8a5d4771a49a70
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk-deps/hidapi.bst
- freedesktop-sdk.bst:components/libevdev.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Ddoc=true
