kind: autotools
sources:
- url: https://download.gnome.org/sources/glibmm/2.57/glibmm-2.57.1.tar.xz
  kind: tar
  ref: b98a9ea2ed5ea0a62d908182974e8a049fe7a890aad525b44a28bb5e44ca0d4c
depends:
- core-deps/glib.bst
- core-deps/libsigcplusplus.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
