kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgtop
  track: master
depends:
- core-deps/glib.bst
- base.bst
environment:
  CC: gcc -std=c99
