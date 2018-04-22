kind: autotools
sources:
- kind: tar
  url: https://libopenraw.freedesktop.org/download/exempi-2.4.5.tar.bz2
depends:
- core-deps/boost.bst
- base.bst
variables:
  autogen: autoreconf -ivf
