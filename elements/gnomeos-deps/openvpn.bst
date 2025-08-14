kind: autotools

sources:
- kind: tar
  url: openvpn:openvpn-2.6.14.tar.gz
  ref: 9eb6a6618352f9e7b771a9d38ae1631b5edfeed6d40233e243e602ddf2195e7a

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
