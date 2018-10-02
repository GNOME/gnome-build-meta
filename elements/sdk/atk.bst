kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/atk/2.30/atk-2.30.0.tar.xz
  ref: dd4d90d4217f2a0c1fee708a555596c2c19d26fef0952e1ead1938ab632c027b
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
