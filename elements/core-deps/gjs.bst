kind: autotools
sources:
- url: https://download.gnome.org/sources/gjs/1.51/gjs-1.51.90.tar.xz
  kind: tar
  ref: 3c28a8cce0ea6c934ff53cdf245f224005a29ecf48cab40279b9015097a81af3
depends:
- core-deps/gobject-introspection.bst
- core-deps/m4-common.bst
- core-deps/mozjs52.bst
- base.bst
variables:
  conf-local: --enable-installed-tests
