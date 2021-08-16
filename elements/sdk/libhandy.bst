kind: meson
sources:
- kind: tar
  url: gnome_downloads:libhandy/1.3/libhandy-1.3.90.tar.xz
  ref: 00d6dc016aef7e7920caf54223f60d46c0556dda9181ae660767d8e7b8fd7fb7
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
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
