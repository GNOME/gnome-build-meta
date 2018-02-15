kind: autotools
sources:
- url: https://download.gnome.org/sources/glibmm/2.55/glibmm-2.55.1.tar.xz
  kind: tar
  ref: 248597abcfe20a647a7fb728b1fb691d74d6e68686e402240b162d02d8c463cc
depends:
- core-deps/glib.bst
- core-deps/libsigcplusplus.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
