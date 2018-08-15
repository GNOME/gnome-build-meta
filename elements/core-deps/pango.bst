depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- filename: desktop/fribidi.bst
  junction: freedesktop-sdk.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: desktop/harfbuzz.bst
  junction: freedesktop-sdk.bst
- filename: desktop/fontconfig.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: fb3d875305d5143f02cde5c72fec3903e60dc35844759dc14b2df4955b5dde3a
  url: https://download.gnome.org/sources/pango/1.42/pango-1.42.3.tar.xz
