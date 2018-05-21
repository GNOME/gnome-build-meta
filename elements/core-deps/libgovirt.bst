kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgovirt
  track: master
depends:
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- core-deps/librest.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
