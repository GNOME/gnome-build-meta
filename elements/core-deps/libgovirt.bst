kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgovirt
  track: master
depends:
- core-deps/librest.bst
- sdk/gnome-common.bst
  type: build
- sdk/gobject-introspection.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
