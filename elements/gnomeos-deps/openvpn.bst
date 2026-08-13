kind: autotools

sources:
- kind: git_repo
  url: github:OpenVPN/openvpn.git
  track: 'v*'
  exclude:
  - '*rc*'
  - '*beta*'
  - '*alpha*'
  ref: v2.7.6-0-g327a33de2aa21883f3d206774c1d0801b244fce6

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/python3-docutils.bst

depends:
- freedesktop-sdk.bst:components/libcap-ng.bst
- freedesktop-sdk.bst:components/libnl.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/lz4.bst
- freedesktop-sdk.bst:components/lzo.bst
- freedesktop-sdk.bst:components/openssl.bst
