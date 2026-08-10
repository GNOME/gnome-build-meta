kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.7/libshumate-1.7.beta.tar.xz
  ref: 97ba73581aa799a2019d4f00611c2d510af19519688951e2750920b46cd2a5f9
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
