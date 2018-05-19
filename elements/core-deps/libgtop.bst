kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgtop
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
environment:
  CC: gcc -std=c99
