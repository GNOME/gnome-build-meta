kind: meson
sources:
- kind: tar
  url: gnome_downloads:libhandy/1.4/libhandy-1.4.0.tar.xz
  ref: 2676d51fa1fa40fdee7497d3e763fefa18b0338bffcd2ee32e7f7e633c885446
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
