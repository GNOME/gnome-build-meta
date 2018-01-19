kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-keyring
  track: master
depends:
- core-deps/gcr.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- base.bst
