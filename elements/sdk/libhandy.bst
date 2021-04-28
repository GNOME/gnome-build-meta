kind: meson
sources:
- kind: tar
  url: gnome_downloads:libhandy/1.2/libhandy-1.2.2.tar.xz
  ref: 47ffd2865d02bd1ca579522deadd7e2f95362f1f202462fd5eeae2b81668b048
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
