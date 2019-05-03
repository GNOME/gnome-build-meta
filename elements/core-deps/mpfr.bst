kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:mpfr/mpfr-4.0.1.tar.xz
depends:
- filename: components/gmp.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
