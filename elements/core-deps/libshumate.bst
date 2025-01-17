kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.3/libshumate-1.3.1.tar.xz
  ref: 6efe9352d91744822d41ead4714a2ab4b378481a86a2204b7bec4082dffc1b8b
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
