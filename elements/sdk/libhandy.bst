kind: meson

sources:
- kind: tar
  url: gnome_downloads:libhandy/1.6/libhandy-1.6.1.tar.xz
  ref: 6eab0384404d56bd1b1fa059d9a081177778f6ae080ffc2120f28656ca7462a4
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
