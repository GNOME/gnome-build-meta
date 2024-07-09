kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.3/libshumate-1.3.alpha.tar.xz
  ref: e23005a63342471c37dcfa104341c5a9b96a10255beb52a87f9e994ff0f99312
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
