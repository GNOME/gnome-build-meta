kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgovirt
  track: master
depends:
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- sdk/librest.bst
- base.bst
