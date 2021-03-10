kind: meson
sources:
- kind: tar
  url: https://source.puri.sm/Librem5/libhandy/-/archive/v0.0.13/libhandy-v0.0.13.tar.bz2
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
