kind: meson

sources:
- kind: git_repo
  url: gnome:libshumate.git
  track: main
  ref: 1.7.0-13-g7def0187363d865dcf81a93ccb0a9b0643bb97c3

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
