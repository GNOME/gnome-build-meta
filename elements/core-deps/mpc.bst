kind: autotools

sources:
- kind: tar
  url: ftp_gnu_org:mpc/mpc-1.4.1.tar.xz
  ref: 91204cd32f164bd3b7c992d4a6a8ce6519511aadab30f78b6982d0bf8d73e931
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:components/mpfr.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
