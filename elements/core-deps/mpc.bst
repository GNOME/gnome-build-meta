kind: autotools
sources:
- kind: tar
  url: https://ftp.gnu.org/gnu/mpc/mpc-1.2.1.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/mpfr.bst
- freedesktop-sdk.bst:bootstrap-import.bst
