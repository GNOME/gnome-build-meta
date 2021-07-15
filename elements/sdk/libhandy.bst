kind: meson
sources:
- kind: tar
  url: gnome_downloads:libhandy/1.2/libhandy-1.2.3.tar.xz
  ref: 92ec4a581ec1b41dd07a4e8faaf5d52ae37cabb7e1fa7f944d6cafbe596b6d61
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
