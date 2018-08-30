kind: autotools
sources:
- kind: tar
  url: http://www.freedesktop.org/software/colord/releases/colord-gtk-0.1.26.tar.xz
  ref: 28d00b7f157ea3e2ea5315387b2660fde82faba16674861c50465e55d61a3e45
depends:
- core-deps/colord.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-vala
