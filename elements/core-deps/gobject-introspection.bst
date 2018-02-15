kind: autotools
sources:
- url: https://download.gnome.org/sources/gobject-introspection/1.55/gobject-introspection-1.55.1.tar.xz
  kind: tar
  ref: cc0794ad8eafce783b5d7e2d8d6b7741152cc56e912916d69da0e9c59da9c9a5
depends:
- core-deps/glib.bst
- base.bst
variables:
  conf-local: --with-python=python3
