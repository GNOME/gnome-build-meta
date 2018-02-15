kind: autotools
sources:
- url: http://www.freedesktop.org/software/colord/releases/colord-gtk-0.1.26.tar.xz
  kind: tar
  ref: 28d00b7f157ea3e2ea5315387b2660fde82faba16674861c50465e55d61a3e45
depends:
- core-deps/colord.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --enable-vala
