kind: autotools
sources:
- kind: tar
  url: https://libvirt.org/sources/libvirt-4.1.0.tar.xz
depends:
- core-deps/libnl.bst
- core-deps/libtirpc.bst
- core-deps/portablexdr.bst
- core-deps/lvm2.bst
- base.bst
