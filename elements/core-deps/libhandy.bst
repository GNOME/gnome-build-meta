kind: meson
sources:
- kind: tar
  url: gnome_downloads:libhandy/0.81/libhandy-0.81.0.tar.xz
  ref: 3590d22731c85d941b10478f96035cda5d9a20b5dbd3fc43570f77321b5aae4b
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
