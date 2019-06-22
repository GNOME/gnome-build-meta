kind: autotools
sources:
- kind: tar
  url: https://libvirt.org/sources/libvirt-4.9.0.tar.xz
depends:
- core-deps/libnl.bst
- core-deps/portablexdr.bst
- core-deps/lvm2.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
