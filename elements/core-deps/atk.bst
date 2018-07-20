kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/atk/2.29/atk-2.29.2.tar.xz
  ref: 1d48426cdca1e81a6728b1678c9cf9a1102feff27680d3273d29930fe94d2e80
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
