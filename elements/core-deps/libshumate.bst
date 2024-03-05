kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.2/libshumate-1.2.rc2.tar.xz
  ref: ad24ed819c2f4f5330857e1dc69e55405dd700cad14c3e764080bd305e453345
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
