kind: meson
sources:
- url: https://download.gnome.org/sources/eog/3.28/eog-3.28.1.tar.xz
  kind: tar
  ref: 78d52c9295c1a67386461bfdf4f1803eca31f4757df3dc1022cad5d649277aec
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libpeas.bst
- core-deps/librsvg.bst
- core-deps/meson.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- base.bst
