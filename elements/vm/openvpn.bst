kind: autotools

sources:
- kind: tar
  url: https://swupdate.openvpn.org/community/releases/openvpn-2.5.1.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/git-minimal.bst

depends:
- freedesktop-sdk.bst:components/lz4.bst
- freedesktop-sdk.bst:components/lzo.bst
- freedesktop-sdk.bst:components/linux-pam.bst
