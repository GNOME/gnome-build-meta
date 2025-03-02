kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.4/libshumate-1.4.rc.tar.xz
  ref: a57b97dbbda55bcb07c6f0197ff006128518c2b2c88fbee8bea5168acbc9baee
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
