kind: autotools
sources:
- kind: tar
  url: http://ftp.videolan.org/pub/videolan/libbluray/1.0.2/libbluray-1.0.2.tar.bz2
depends:
- base.bst
variables:
  conf-local: --disable-bdjava-jar
