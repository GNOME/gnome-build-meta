kind: meson
sources:
- kind: tar
  url: gnome_downloads:libhandy/1.2/libhandy-1.2.0.tar.xz
  ref: 39f590ae20910e76fe1c0607b2ebe589750f45610d6aeec5c30e2ee602a20b25
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
