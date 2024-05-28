kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.2/libshumate-1.2.2.tar.xz
  ref: 6f587579f7f2d60b38d3f4727eb1a8d2feac9cbdc018e53ff5f772a8608fa44b
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
