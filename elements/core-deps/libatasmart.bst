kind: autotools
sources:
- kind: tar
  url: http://0pointer.de/public/libatasmart-0.19.tar.xz
depends:
- base.bst
variables:
  autogen: autoreconf -ivf
