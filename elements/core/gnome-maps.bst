kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-maps/3.29/gnome-maps-3.29.92.tar.xz
  ref: f9e4cc4eccb642e2c6d8eadf7437a39b5c1d85f091b4c269aad0bfd5f55542ce
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
