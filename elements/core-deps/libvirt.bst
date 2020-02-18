kind: autotools
sources:
- kind: tar
  url: https://libvirt.org/sources/libvirt-4.9.0.tar.xz
  ref: 4fd4bfe7312b7996a817c7919cf0062de0d5b3c400c93bd30855a46c40dd455a
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
config:
  install-commands:
    (>):
    - mv %{install-root}/var/run %{install-root}
