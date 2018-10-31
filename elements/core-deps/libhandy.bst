kind: meson
sources:
- kind: git
  url: https://source.puri.sm/Librem5/libhandy.git
  track: master
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
variables:
  meson-local: >
    -Dgtk_doc=true
    -Dintrospection=true
    -Dvapi=true
    -Dtests=true
    -Dexamples=false
    -Dglade_catalog=false
