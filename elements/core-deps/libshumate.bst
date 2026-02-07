kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.6/libshumate-1.6.beta.tar.xz
  ref: a3cbf2be1ad96d821464299f419b89ba73750c12024a58e07ad99cbb0dab40eb
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
