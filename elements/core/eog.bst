kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/eog/3.28/eog-3.28.4.tar.xz
depends:
- core-deps/exempi.bst
- core-deps/libpeas.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
