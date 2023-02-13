kind: meson

sources:
- kind: tar
  url: gnome_downloads:libhandy/1.6/libhandy-1.6.4.tar.xz
  ref: 849898d16adb8db0d516d2946292075b79fa75b9ca3592a9ad7b0e4d992d3207
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
