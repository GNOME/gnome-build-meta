kind: autotools
sources:
- kind: tar
  url: http://telepathy.freedesktop.org/releases/telepathy-glib/telepathy-glib-0.24.1.tar.gz
  ref: 9e0df1d8f857e0270cf0b32e2d1ca5a24aa7282873361785d573f72ad7f7d5eb
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --enable-vala-bindings --disable-fatal-warnings
