kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.2/libshumate-1.2.alpha.tar.xz
  ref: d17254e2ea4870abe14d32890fc5ccb36c984ea273ea887e9b74c0b322c8de3f
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
