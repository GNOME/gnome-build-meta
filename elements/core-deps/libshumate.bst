kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.5/libshumate-1.5.3.tar.xz
  ref: 35f013b25391856e1b5c3d4409a5c4a640c6ccb5f5296ff982ec7bed39f56d4c
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
