kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.3/libshumate-1.3.2.tar.xz
  ref: f8762bbc6e296d78be1f8422f56da4c40bc8d12afc7002a324172a9198eeed5c
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
