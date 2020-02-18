kind: meson
sources:
- kind: tar
  url: https://source.puri.sm/Librem5/libhandy/-/archive/v0.0.10/libhandy-v0.0.10.tar.bz2
  ref: 366350c0c15f53b8de4032780de4c5a5c41dfe2001d7b3d39ec6399123c2cb73
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: sdk/vala.bst
  type: build
- filename: sdk/gtk-doc.bst
  type: build
- filename: components/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: >-
    -Dgtk_doc=true
    -Dvapi=true
    -Dtests=true
    -Dexamples=false
    -Dglade_catalog=disabled
