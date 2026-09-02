kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.7/libshumate-1.7.rc.tar.xz
  ref: bd37fe99d1ca9802aff54aa72cf7b29cf5e1a1f407a6306ff720e5cce5d472a5
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
