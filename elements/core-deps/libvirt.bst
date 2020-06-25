kind: autotools
sources:
- kind: tar
  url: https://libvirt.org/sources/libvirt-4.9.0.tar.xz
build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/libnl.bst
- freedesktop-sdk.bst:components/lvm2.bst
- core-deps/portablexdr.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libtirpc.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:bootstrap-import.bst
config:
  install-commands:
    (>):
    - mv %{install-root}/var/run %{install-root}
