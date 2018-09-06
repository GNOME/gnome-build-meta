kind: autotools
sources:
- kind: tar
  url: https://libvirt.org/sources/libvirt-4.1.0.tar.xz
  ref: 8a2fa4826f311a936be8b7d4c8d76516c29417a593b1d1bb8641a8caaa316439
depends:
- core-deps/libnl.bst
- core-deps/libtirpc.bst
- core-deps/portablexdr.bst
- core-deps/lvm2.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
