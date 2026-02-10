kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.4/libshumate-1.4.1.tar.xz
  ref: 09d91ade7627ac212a24cdda669dbfc4a24ece6af9229b60b1da5597caf31aac
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
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dvector_renderer=true
