kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-photos
  track: master
depends:
- core-deps/babl.bst
- core-deps/gegl.bst
- core-deps/geocode-glib.bst
- core-deps/gexiv2.bst
- core-deps/gnome-online-miners.bst
- core-deps/grilo.bst
- core-deps/grilo-plugins.bst
- core-deps/libdazzle.bst
- core-deps/libgfbgraph.bst
- core-deps/tracker.bst
- core-deps/tracker-miners.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libgdata.bst
- base.bst
