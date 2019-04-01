kind: autotools
sources:
- kind: tar
  url: https://libvirt.org/sources/libvirt-4.7.0.tar.xz
  ref: 92c279f7321624ac5a37a81f8bbe8c8d2a16781da04c63c99c92d3de035767e4
depends:
- core-deps/libnl.bst
- core-deps/libtirpc.bst
- core-deps/portablexdr.bst
- core-deps/lvm2.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
