kind: autotools

sources:
- kind: git_repo
  url: github:OpenVPN/openvpn.git
  track: 'v*'
  exclude:
  - '*rc*'
  - '*beta*'
  - '*alpha*'
  ref: v2.6.15-0-g90bdd59a95170169585a171d4993ba0b1851a3f9

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/python3-docutils.bst

depends:
- freedesktop-sdk.bst:components/libcap-ng.bst
- freedesktop-sdk.bst:components/libnl.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/lz4.bst
- freedesktop-sdk.bst:components/lzo.bst
- freedesktop-sdk.bst:components/openssl.bst
