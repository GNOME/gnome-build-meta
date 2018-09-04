kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-calculator/3.30/gnome-calculator-3.30.0.tar.xz
  ref: add2a50dcc32a2d5872d0ecb2ad69d8bb74521671d20e00a8b0f0fd9b2983bb7
depends:
- core-deps/gtksourceview-3.bst
- core-deps/mpc.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
