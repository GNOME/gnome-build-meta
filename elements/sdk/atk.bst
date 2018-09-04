kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/atk/2.29/atk-2.29.92.tar.xz
  ref: c89b5c0011b7b8a1dff84817f9e582b618676c7ab5274c7d31e58c10b1f38050
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
