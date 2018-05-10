kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:libcdio/libcdio-2.0.0.tar.gz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --without-cdda-player
