kind: meson
sources:
- kind: git_repo
  url: gnome:libmanette.git
  track: main
  ref: 0.2.9-9-g51d2f4b39cbdd6d1794e5a9f70a7980b71b18dd9

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
