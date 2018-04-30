kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-maps
  track: master
depends:
- core-deps/folks.bst
- core-deps/geocode-glib.bst
- core-deps/libchamplain.bst
- core-deps/libgee.bst
- core-deps/libgfbgraph.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/clutter-gtk.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/glib-networking.bst
- sdk/gnome-online-accounts.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- base.bst
