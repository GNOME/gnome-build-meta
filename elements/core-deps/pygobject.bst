kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/pygobject/3.28/pygobject-3.28.2.tar.xz
  ref: ac443afd14fcb9ff5744b65d6e2b380e70510278404fb8684a9b9fb089e6f2ca
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/m4-common.bst
- core-deps/py3cairo.bst
- base.bst
variables:
  conf-local: --with-python=python3
