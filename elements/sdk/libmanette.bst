kind: meson
sources:
- kind: git_repo
  url: gnome:libmanette.git
  track: main
  ref: 0.2.11-41-gde1b1f54bcd46ee677757ce5938f41c5b340292a

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/hidapi.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libevdev.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Ddoc=true
