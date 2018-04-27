kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:libcdio/libcdio-2.0.0.tar.gz
depends:
- base.bst
variables:
  conf-local: --without-cdda-player
