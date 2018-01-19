kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-online-miners
  track: master
depends:
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/grilo.bst
- core-deps/libgdata.bst
- core-deps/libgfbgraph.bst
- core-deps/libzapojit.bst
- core-deps/tracker.bst
- base.bst
