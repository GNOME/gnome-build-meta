kind: autotools
sources:
- kind: tar
  url: github_com:ibus/ibus-anthy/releases/download/1.5.6/ibus-anthy-1.5.6.tar.gz
depends:
- core-deps/anthy.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/ibus.bst
- sdk/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-private-png=yes --with-python=python3
