kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:mpc/mpc-1.2.1.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/mpfr.bst
- freedesktop-sdk.bst:bootstrap-import.bst
