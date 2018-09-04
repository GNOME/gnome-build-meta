kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-maps/3.30/gnome-maps-3.30.0.tar.xz
  ref: 95734f8d2790d18f2d6e7bb9eb8b771a15201938d4dd5fbba10efc4de1ae83ed
depends:
- core-deps/folks.bst
- core-deps/geocode-glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libchamplain.bst
- core-deps/libgee.bst
- core-deps/libgfbgraph.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/clutter-gtk.bst
- sdk/geoclue.bst
- sdk/gjs.bst
- sdk/glib-networking.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
