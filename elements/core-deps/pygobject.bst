kind: autotools
sources:
- kind: git
  url: git_gnome_org:pygobject
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/m4-common.bst
- core-deps/py3cairo.bst
- base.bst
variables:
  conf-local: --with-python=python3
