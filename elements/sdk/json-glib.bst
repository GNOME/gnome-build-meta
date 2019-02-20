kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/json-glib/1.4/json-glib-1.4.4.tar.xz
depends:
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- filename: sdk/gtk-doc.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
