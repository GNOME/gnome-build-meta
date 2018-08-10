kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/pango
  track: master
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
