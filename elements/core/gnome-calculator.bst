kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-calculator/3.29/gnome-calculator-3.29.3.tar.xz
  ref: a2b0a6549663e3155defa6e0cca0ca82ecffd6fc5bdb173d310057e3ed975d25
depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtksourceview-3.bst
- core-deps/libsoup.bst
- core-deps/mpc.bst
- core-deps/vala.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
