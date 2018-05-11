kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-calculator/3.28/gnome-calculator-3.28.1.tar.xz
  ref: 2cee9ef809cea1adbbcc8de65e05f0bb7ed8e78cd2c1a3a1105fba59d36df717
depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtksourceview-3.bst
- core-deps/libsoup.bst
- core-deps/vala.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- base.bst
