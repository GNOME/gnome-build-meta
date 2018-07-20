kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/eog/3.28/eog-3.28.2.tar.xz
  ref: c046e7e184e5bb3ccb44eadc75cd9278ce682cc849c016036e3fe313b1cb5abd
depends:
- core-deps/exempi.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libpeas.bst
- core-deps/librsvg.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
