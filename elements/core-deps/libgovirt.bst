kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgovirt/0.3/libgovirt-0.3.4.tar.xz
depends:
- core-deps/librest.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
