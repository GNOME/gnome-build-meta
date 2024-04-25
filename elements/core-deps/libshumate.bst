kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.2/libshumate-1.2.1.tar.xz
  ref: 1105ee077e2147f2a039cddfa616fa5cb9438883dd940427e11699dcd6549c11
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
