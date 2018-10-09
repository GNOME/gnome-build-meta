kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/geocode-glib/3.26/geocode-glib-3.26.0.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
