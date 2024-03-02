kind: meson

sources:
- kind: git_repo
  url: gnome:libshumate.git
  track: main
  ref: 1.2.rc-1-gaa0ec6b62e5c5e31fc0eb2bf9dfeebcc61d537e5

build-depends:
- sdk-deps/gi-docgen.bst
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
