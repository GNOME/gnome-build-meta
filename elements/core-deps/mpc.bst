kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:mpc/mpc-1.1.0.tar.gz
depends:
- core-deps/mpfr.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
