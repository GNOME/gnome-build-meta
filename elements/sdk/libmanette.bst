kind: meson
sources:
- kind: tar
  url: gnome_downloads:libmanette/0.2/libmanette-0.2.12.tar.xz
  ref: 48b349267180f1dc34d405a9e1e90ba16f054a19ce907930e679493d911ea1d8
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
