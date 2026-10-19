kind: meson

sources:
- kind: git_repo
  url: gnome:libshumate.git
  track: main
  ref: 1.7.0-9-gd64d8f6e2c26c5c3ae7a85310b47193a0ae2ff18

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/gperf.bst

depends:
- core-deps/protobuf-c.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dvector_renderer=true
