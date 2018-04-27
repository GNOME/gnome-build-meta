kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-online-miners
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- core-deps/grilo.bst
- sdk/libgdata.bst
- core-deps/libgfbgraph.bst
- core-deps/libzapojit.bst
- core-deps/tracker.bst
- base.bst
