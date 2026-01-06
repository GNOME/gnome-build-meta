kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.5/libshumate-1.5.2.tar.xz
  ref: a69565c1eb5dd9ecd39268bbf1435eaa51a5b028ed0c652a0b6b9367e04c9386
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
