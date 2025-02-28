kind: autotools

sources:
- kind: tar
  url: github_files:adrienverge/openfortivpn/archive/refs/tags/v1.22.1.tar.gz
  ref: 9aaaae2229f01b35bf79dcc9e1c0a4363cec75084a30fd46df58c20d52bff809

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/openssl.bst
