kind: meson
sources:
- url: https://download.gnome.org/sources/eog/3.27/eog-3.27.90.tar.xz
  kind: tar
  ref: 291e63ebe917082dbf0b25f79e7e1d01e702fc01b768e71aeab926bad05e27a5
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/gettext.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libpeas.bst
- core-deps/librsvg.bst
- core-deps/meson.bst
- core-deps/yelp-tools.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- base.bst
