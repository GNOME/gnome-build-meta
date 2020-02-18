kind: meson
sources:
- kind: tar
  url: gnome_downloads:gobject-introspection/1.62/gobject-introspection-1.62.0.tar.xz
  ref: b1ee7ed257fdbc008702bdff0ff3e78a660e7e602efa8f211dc89b9d1e7d90a2
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: components/bison.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/flex.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: -Dgtk_doc=true
