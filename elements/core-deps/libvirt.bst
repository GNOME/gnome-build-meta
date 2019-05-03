kind: autotools
sources:
- kind: tar
  url: https://libvirt.org/sources/libvirt-4.9.0.tar.xz
depends:
- core-deps/libnl.bst
- core-deps/portablexdr.bst
- core-deps/lvm2.bst
- filename: components/gnutls.bst
  junction: freedesktop-sdk.bst
- filename: components/libtirpc.bst
  junction: freedesktop-sdk.bst
- filename: components/libxslt.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/libxml2.bst
  junction: freedesktop-sdk.bst
- filename: components/python3.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
