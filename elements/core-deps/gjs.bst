kind: autotools
sources:
- url: https://download.gnome.org/sources/gjs/1.52/gjs-1.52.1.tar.xz
  kind: tar
  ref: a8fc9a4991e2b5611d54029b623de2a62522342766e4011504f4f538764735e8
depends:
- core-deps/gobject-introspection.bst
- core-deps/m4-common.bst
- core-deps/mozjs52.bst
- base.bst
variables:
  conf-local: --enable-installed-tests
