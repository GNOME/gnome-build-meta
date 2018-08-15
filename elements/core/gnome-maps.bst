depends:
- core-deps/clutter-gtk.bst
- core-deps/folks.bst
- core-deps/geoclue.bst
- core-deps/geocode-glib.bst
- core-deps/gjs.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libchamplain.bst
- core-deps/libgee.bst
- core-deps/libgfbgraph.bst
- core-deps/librsvg.bst
- core/adwaita-icon-theme.bst
- core/glib-networking.bst
- core/gnome-desktop.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: 6d08676f006f0fe1c808714fef964fba948c1da61c660e5629b459b3e6a41731
  url: https://download.gnome.org/sources/gnome-maps/3.29/gnome-maps-3.29.91.tar.xz
