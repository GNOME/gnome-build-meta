kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:mpfr/mpfr-4.0.1.tar.xz
  ref: 67874a60826303ee2fb6affc6dc0ddd3e749e9bfcb4c8655e3953d0458a6e16e
depends:
- filename: components/gmp.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
