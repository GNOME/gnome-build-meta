kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/pango/1.42/pango-1.42.4.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: desktop/fontconfig.bst
  junction: freedesktop-sdk.bst
- filename: desktop/fribidi.bst
  junction: freedesktop-sdk.bst
- filename: desktop/harfbuzz.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
