kind: autotools
sources:
- kind: tar
  url: https://libvirt.org/sources/libvirt-4.1.0.tar.xz
depends:
- core-deps/libnl.bst
- core-deps/libtirpc.bst
- core-deps/portablexdr.bst
- core-deps/lvm2.bst
- filename: base/python2.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
