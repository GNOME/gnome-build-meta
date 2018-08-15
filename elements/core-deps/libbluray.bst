depends:
- filename: desktop/fontconfig.bst
  junction: freedesktop-sdk.bst
- filename: desktop/freetype.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 6d9e7c4e416f664c330d9fa5a05ad79a3fb39b95adfc3fd6910cbed503b7aeff
  url: http://ftp.videolan.org/pub/videolan/libbluray/1.0.2/libbluray-1.0.2.tar.bz2
variables:
  conf-aux: build-aux
  conf-local: --disable-bdjava-jar
