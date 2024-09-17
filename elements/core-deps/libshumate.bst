kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.3/libshumate-1.3.0.tar.xz
  ref: 8227a6e8281cde12232894fef83760d44fa66b39ef033c61ed934a86c6dc75d4
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
