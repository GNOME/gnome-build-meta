kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgovirt
  track: master
depends:
- core-deps/librest.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
