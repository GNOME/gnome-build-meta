kind: meson
sources:
- kind: tar
  url: gnome_downloads:json-glib/1.4/json-glib-1.4.4.tar.xz
depends:
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- filename: sdk/gtk-doc.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
