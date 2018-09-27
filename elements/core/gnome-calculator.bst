kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-calculator/3.30/gnome-calculator-3.30.1.tar.xz
  ref: ec7aac474da1beea07e4d23c227b282ae0270d2488d940bba455b25064657f62
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
