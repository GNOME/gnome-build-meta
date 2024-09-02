kind: meson

sources:
- kind: git_repo
  url: gnome:libshumate.git
  track: main
  ref: 1.3.rc-4-gc1b57e140f1b1cfac28a0d7584a7820b6bfdaac5

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/protobuf-c.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dvector_renderer=true
