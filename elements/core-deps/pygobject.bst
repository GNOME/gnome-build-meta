kind: autotools
sources:
- url: https://download.gnome.org/sources/pygobject/3.27/pygobject-3.27.4.tar.xz
  kind: tar
  ref: e0cc10e67b9f18aebcd8d11abc2c3183622db485891ad8c54ac55d0945bf9cc3
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/m4-common.bst
- core-deps/py3cairo.bst
- base.bst
variables:
  conf-local: --with-python=python3
