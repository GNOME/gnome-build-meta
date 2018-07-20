kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-maps/3.29/gnome-maps-3.29.4.tar.xz
  ref: b9d260c515ab7a9ee6e32f7f7041eb844fb72905ad51407bd806bb69b3f28c28
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
