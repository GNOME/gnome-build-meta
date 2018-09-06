kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:libcdio/libcdio-2.0.0.tar.gz
  ref: 1b481b5da009bea31db875805665974e2fc568e2b2afa516f4036733657cf958
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --without-cdda-player
