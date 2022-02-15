kind: meson

sources:
- kind: tar
  url: gnome_downloads:libhandy/1.5/libhandy-1.5.90.tar.xz
  ref: 69c137b5782293539371bcdbd15b91cc1f0f4a2f54d9bde3b3398607a58890a2
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dgtk_doc=true
    -Dvapi=true
    -Dtests=true
    -Dexamples=false
    -Dglade_catalog=disabled
