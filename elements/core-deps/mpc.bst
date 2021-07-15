kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:mpc/mpc-1.2.1.tar.gz
  ref: 17503d2c395dfcf106b622dc142683c1199431d095367c6aacba6eec30340459
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/mpfr.bst
- freedesktop-sdk.bst:bootstrap-import.bst
