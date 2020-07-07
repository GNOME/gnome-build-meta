kind: meson
sources:
- kind: tar
  url: gnome_downloads:libhandy/0.83/libhandy-0.83.0.tar.xz
  ref: 2ed59ae6635d26a024954943af9e28c113a4097459c2867adedf3acbfc2cfb34
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgtk_doc=true
    -Dvapi=true
    -Dtests=true
    -Dexamples=false
    -Dglade_catalog=disabled
