kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-online-miners.git
  track: master
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/grilo.bst
- core-deps/libgdata.bst
- core-deps/libgfbgraph.bst
- core-deps/libzapojit.bst
- core-deps/tracker.bst
- sdk/glib.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
