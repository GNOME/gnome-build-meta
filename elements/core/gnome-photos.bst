kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-photos
  track: master
depends:
- core-deps/babl.bst
- sdk/gdk-pixbuf.bst
- core-deps/gegl.bst
- core-deps/geocode-glib.bst
- core-deps/gexiv2.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- core-deps/gnome-online-miners.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- sdk/gtk+-3.bst
- core-deps/libdazzle.bst
- sdk/libgdata.bst
- core-deps/libgfbgraph.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- base.bst
