kind: meson
sources:
- kind: tar
  url: gnome_downloads:libhandy/1.5/libhandy-1.5.0.tar.xz
  ref: 466b9e026c1f9eb3b65966f530d97703a8212daaf911748c145e9cb843dbd6fe
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
