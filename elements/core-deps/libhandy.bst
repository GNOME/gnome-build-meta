kind: meson
sources:
- kind: tar
  url: https://source.puri.sm/Librem5/libhandy/-/archive/v0.0.9/libhandy-v0.0.9.tar.bz2
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: sdk/vala.bst
  type: build
- filename: sdk/gtk-doc.bst
  type: build
- filename: base/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: >
    -Dgtk_doc=true
    -Dvapi=true
    -Dtests=true
    -Dexamples=false
    -Dglade_catalog=disabled
