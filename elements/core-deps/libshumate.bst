kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.4/libshumate-1.4.alpha.tar.xz
  ref: 9c1b48aee614aad7e192be0d22a09b516e359d333a177718df607ed90e7b27a9
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
