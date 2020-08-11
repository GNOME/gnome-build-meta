kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:mpc/mpc-1.1.0.tar.gz
  ref: 6985c538143c1208dcb1ac42cedad6ff52e267b47e5f970183a3e75125b43c2e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/mpfr.bst
- freedesktop-sdk.bst:bootstrap-import.bst
