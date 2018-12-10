kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-maps/3.30/gnome-maps-3.30.2.1.tar.xz
  ref: a7d0d369bb44b78faa43a889f32f2410e235420825d04db06c20ca22cdd81806
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
