kind: autotools
sources:
- kind: tar
  url: https://libvirt.org/sources/libvirt-4.1.0.tar.xz
depends:
- core-deps/libnl.bst
- sdk/libtirpc.bst
- core-deps/portablexdr.bst
- sdk/lvm2.bst
- base.bst
