kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.6/libshumate-1.6.4.tar.xz
  ref: 5148bcf4392315b00c360a9223d9f3e899b4aacdbc208d9723da0eb617dae69a
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
