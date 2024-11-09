kind: meson
sources:
- kind: git_repo
  url: gnome:libmanette.git
  track: main
  ref: 0.2.9-12-g72d43cd3d3b174cb8ebe3935d0b29c57e0cd9c9a

build-depends:
- sdk/gtk-doc.bst
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
