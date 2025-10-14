kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.5/libshumate-1.5.1.tar.xz
  ref: daadf8b700134388c7e933e0b623586aaa7f2fbe8b3a6259387513303b9876e6
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
