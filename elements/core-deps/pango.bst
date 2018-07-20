kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/pango/1.42/pango-1.42.2.tar.xz
  ref: b1e416b4d40416ef6c8224cf146492b86848703264ba88f792290992cf3ca1e2
depends:
- core-deps/fribidi.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: desktop/harfbuzz.bst
  junction: freedesktop-sdk.bst
- filename: desktop/fontconfig.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
