kind: meson
sources:
- kind: tar
  url: gnome_downloads:libhandy/0.90/libhandy-0.90.0.tar.xz
  ref: 6ab0869a3aa483298ea20ec89d4c14c38ba4de416b33181d21e15a6039df5985
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
