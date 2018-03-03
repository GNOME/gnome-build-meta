kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-maps
  track: master
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
- base.bst
