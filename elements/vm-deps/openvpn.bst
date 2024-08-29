kind: autotools

sources:
- kind: tar
  url: openvpn:openvpn-2.6.12.tar.gz
  ref: 1c610fddeb686e34f1367c347e027e418e07523a10f4d8ce4a2c2af2f61a1929

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/git-minimal.bst

depends:
- freedesktop-sdk.bst:components/libcap-ng.bst
- freedesktop-sdk.bst:components/libnl.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/lz4.bst
- freedesktop-sdk.bst:components/lzo.bst
- freedesktop-sdk.bst:components/openssl.bst
