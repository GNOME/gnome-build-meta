kind: autotools

sources:
- kind: git_repo
  url: github:OpenVPN/openvpn.git
  track: 'v*'
  exclude:
  - '*rc*'
  - '*beta*'
  - '*alpha*'
  ref: v2.7.1-0-g5c4e4c08679c6c754928d4f6c31ab6180b3cff3d

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
