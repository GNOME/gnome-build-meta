kind: meson

sources:
- kind: tar
  url: gnome_downloads:libhandy/1.5/libhandy-1.5.91.tar.xz
  ref: cc761d78344e5b8d27cfa8a2463362f244c11b2b07fe974957b5c96106acd43b
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
