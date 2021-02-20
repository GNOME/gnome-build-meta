kind: meson
sources:
- kind: tar
  url: gnome_downloads:libhandy/1.1/libhandy-1.1.90.tar.xz
  ref: b396ac085fe16c2bddcfe74925d0210c10575ba04c4f8e1fe5db6136e025fa36
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
