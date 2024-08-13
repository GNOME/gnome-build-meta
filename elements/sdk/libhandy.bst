kind: meson

sources:
- kind: tar
  url: gnome_downloads:libhandy/1.8/libhandy-1.8.3.tar.xz
  ref: 05b497229073ff557f10b326e074c5066f8743a302d4820ab97bcb5cd2dab087
build-depends:
- sdk/gi-docgen.bst
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
