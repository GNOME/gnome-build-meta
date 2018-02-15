kind: autotools
sources:
- url: https://download.gnome.org/sources/atkmm/2.24/atkmm-2.24.2.tar.xz
  kind: tar
  ref: ff95385759e2af23828d4056356f25376cfabc41e690ac1df055371537e458bd
depends:
- core-deps/atk.bst
- core-deps/glibmm-2.4.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
