kind: meson

sources:
- kind: git_repo
  url: gnome:libmanette.git
  track: main
  ref: 0.2.11-45-g006e17b2184a3098a14081d50d2b5303c5cf172c

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/hidapi.bst
- freedesktop-sdk.bst:components/libevdev.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Ddoc=true
