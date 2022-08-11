kind: meson

sources:
- kind: tar
  url: gnome_downloads:libhandy/1.7/libhandy-1.7.90.tar.xz
  ref: 3381fe825085fe1a9d075a0dcccf6c49b02abd718f3d8db21f705f7d1896b613
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
