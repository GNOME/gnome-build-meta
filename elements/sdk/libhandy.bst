kind: meson

sources:
- kind: tar
  url: gnome_downloads:libhandy/1.6/libhandy-1.6.3.tar.xz
  ref: 47788bd35804ebd33cb09911e975344c84359e0b6d9520afd1c821eba8ba77ff
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
