kind: autotools
sources:
- kind: tar
  url: http://people.redhat.com/~heinzm/sw/dmraid/src/dmraid-1.0.0.rc16-3.tar.bz2
  base-dir: dmraid/1.0.0.rc16-3/dmraid
depends:
- core-deps/lvm2.bst
- base.bst
variables:
  autogen: autoreconf -ivf
  make: make -j1
