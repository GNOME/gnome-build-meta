kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.7/libshumate-1.7.0.tar.xz
  ref: 3896cc4b6a7bf83141c27df23ce48cdd68467603bc6b764960307cdcbbef80e5
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/gperf.bst

depends:
- core-deps/protobuf-c.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dvector_renderer=true
