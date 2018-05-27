kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:gnome-photos
  track: master
depends:
- core-deps/babl.bst
- core-deps/gdk-pixbuf.bst
- core-deps/gegl.bst
- core-deps/geocode-glib.bst
- core-deps/gexiv2.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gnome-online-miners.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/gtk+-3.bst
- core-deps/libdazzle.bst
- core-deps/libgdata.bst
- core-deps/libgfbgraph.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core/adwaita-icon-theme.bst
- core/gsettings-desktop-schemas.bst
- filename: desktop/desktop-file-utils.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
