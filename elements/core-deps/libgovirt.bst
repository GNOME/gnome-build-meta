kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgovirt/0.3/libgovirt-0.3.4.tar.xz
depends:
- core-deps/librest.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
