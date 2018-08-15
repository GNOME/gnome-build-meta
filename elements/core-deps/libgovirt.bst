depends:
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- core-deps/librest.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 0b2d5f6b108df6d048417b689cbb592999f44629abd23da338ba5e92e1cfc982
  url: https://download.gnome.org/sources/libgovirt/0.3/libgovirt-0.3.4.tar.xz
