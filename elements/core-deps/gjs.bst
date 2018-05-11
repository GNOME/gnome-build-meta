kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gjs/1.53/gjs-1.53.1.tar.xz
  ref: 52d78ce221febeda59e7239a9cfd15bd4be6b16df4c7ab09704947c84ca33418
depends:
- core-deps/gobject-introspection.bst
- core-deps/m4-common.bst
- core-deps/mozjs52.bst
- base.bst
variables:
  conf-local: --enable-installed-tests
