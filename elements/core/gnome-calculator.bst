kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-calculator/3.31/gnome-calculator-3.31.1.tar.xz
depends:
- core-deps/gtksourceview.bst
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
