kind: meson

sources:
- kind: tar
  url: gnome_downloads:libhandy/1.6/libhandy-1.6.2.tar.xz
  ref: 7fa89aaa87966b6d0f5f4ef4d3efdaf654e2b01ea2c7ce2bd70301d1f9f42ca3
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
