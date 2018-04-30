kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgtop
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- base.bst
environment:
  CC: gcc -std=c99
