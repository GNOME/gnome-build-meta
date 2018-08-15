depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 1b481b5da009bea31db875805665974e2fc568e2b2afa516f4036733657cf958
  url: ftp_gnu_org:libcdio/libcdio-2.0.0.tar.gz
variables:
  conf-local: --without-cdda-player
