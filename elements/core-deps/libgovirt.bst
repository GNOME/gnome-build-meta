kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgovirt/0.3/libgovirt-0.3.6.tar.xz
depends:
- core-deps/librest.bst
- filename: sdk/gnome-common.bst
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
