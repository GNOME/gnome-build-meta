kind: autotools
sources:
- kind: git
  url: git_gnome_org:gtksourceview
  track: gnome-3-24
depends:
- core-deps/gtk+-3.bst
- core-deps/m4-common.bst
- core-deps/vala.bst
- base.bst
