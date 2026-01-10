kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.6/libshumate-1.6.alpha.tar.xz
  ref: a1a6fbaa4596e09c6d3861f6044e59ac7aaef414b5dde235477703edc24e0110
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
