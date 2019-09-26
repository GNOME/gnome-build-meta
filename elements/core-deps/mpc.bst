kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:mpc/mpc-1.1.0.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/mpfr.bst
- freedesktop-sdk.bst:bootstrap-import.bst
