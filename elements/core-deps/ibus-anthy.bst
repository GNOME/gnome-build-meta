kind: autotools
sources:
- kind: tar
  url: github_tar:ibus/ibus-anthy/releases/download/1.5.6/ibus-anthy-1.5.6.tar.gz
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/ibus.bst
- base.bst
variables:
  conf-local: --enable-private-png=yes --with-python=python3
