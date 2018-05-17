kind: autotools
sources:
- kind: tar
  url: http://ftp.videolan.org/pub/videolan/libbluray/1.0.2/libbluray-1.0.2.tar.bz2
depends:
- filename: desktop/fontconfig.bst
  junction: freedesktop-sdk.bst
- filename: desktop/freetype.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-bdjava-jar
  conf-aux: build-aux
