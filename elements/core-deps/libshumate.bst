kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.5/libshumate-1.5.4.tar.xz
  ref: 0f44efd9912fea7f7f57ca4c5acf73c1fa9667d276ad5edbd35a3c4006866efc
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dvector_renderer=true
