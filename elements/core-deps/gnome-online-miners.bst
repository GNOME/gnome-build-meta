kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-online-miners
  track: master
depends:
- core-deps/grilo.bst
- core-deps/libgfbgraph.bst
- core-deps/libzapojit.bst
- core-deps/tracker.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/libgdata.bst
- base.bst
