kind: meson
sources:
- kind: tar
  url: gnome_downloads:libhandy/1.0/libhandy-1.0.3.tar.xz
  ref: 559bb3acc2c362488917eb72ed25bdc181f4ae26ac94d177634cc5d34c867f7a
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
