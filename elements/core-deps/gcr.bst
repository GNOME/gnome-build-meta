kind: autotools
sources:
- kind: git
  url: git_gnome_org:gcr
  track: master
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- base.bst
