kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-maps
  track: master
depends:
- sdk/clutter-gtk.bst
- core-deps/folks.bst
- core-deps/geocode-glib.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- core-deps/libchamplain.bst
- core-deps/libgee.bst
- core-deps/libgfbgraph.bst
- sdk/librsvg.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib-networking.bst
- core/gnome-desktop.bst
- base.bst
