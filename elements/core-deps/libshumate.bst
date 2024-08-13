kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.3/libshumate-1.3.beta.tar.xz
  ref: 54c3acaead0546e97cb4c63afbe53cc9d2b68ab5424ff83f07b1d9216bae2b2b
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
