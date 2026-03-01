kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.6/libshumate-1.6.rc.tar.xz
  ref: 5840391148335761f588f371c6f4afff19d808000711daa2418490a1aed31bcc
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
