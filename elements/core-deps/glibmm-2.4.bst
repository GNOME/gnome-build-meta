kind: autotools
sources:
- url: https://download.gnome.org/sources/glibmm/2.54/glibmm-2.54.1.tar.xz
  kind: tar
  ref: 7cc28c732b04d70ed34f0c923543129083cfb90580ea4a2b4be5b38802bf6a4a
depends:
- core-deps/glib.bst
- core-deps/libsigcplusplus-2.0.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
