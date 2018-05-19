kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgovirt
  track: master
depends:
- core-deps/librest.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
