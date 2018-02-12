kind: autotools
sources:
- kind: git
  url: git_gnome_org:gobject-introspection
  track: master
  ref: 6f677e77413b628756a9dbb8082f783757b099f3
depends:
- core-deps/glib.bst
- base.bst
variables:
  conf-local: --with-python=python3
