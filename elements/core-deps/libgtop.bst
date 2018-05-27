kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:libgtop
  track: master
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
environment:
  CC: gcc -std=c99
