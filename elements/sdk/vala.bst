kind: autotools
sources:
- kind: git
  url: git_gnome_org:vala
  track: master
depends:
- sdk/glib.bst
- sdk/graphviz.bst
- filename: sdk/vala-tarball.bst
  type: build
- base.bst
