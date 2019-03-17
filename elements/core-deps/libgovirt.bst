kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgovirt.git
  track: master
depends:
- core-deps/librest.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gobject-introspection.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
