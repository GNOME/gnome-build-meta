kind: autotools

sources:
- kind: git_repo
  url: github:OpenVPN/openvpn.git
  track: 'v*'
  exclude:
  - '*rc*'
  - '*beta*'
  - '*alpha*'
  ref: v2.6.19-0-g5a7604d503425fba2df4bbf8c84bdcc53d33f2ac

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
