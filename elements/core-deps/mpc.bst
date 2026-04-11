kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:mpc/mpc-1.4.0.tar.xz
  ref: 3210b3a546b1cb00c296ca360891d7740ee6ff06deb02a27a35b20cd3c0bb1a5
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/mpfr.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
