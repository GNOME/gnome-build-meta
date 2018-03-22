kind: autotools
sources:
- kind: tar
  url: http://ftp.videolan.org/pub/videolan/libbluray/1.0.2/libbluray-1.0.2.tar.bz2
  ref: 6d9e7c4e416f664c330d9fa5a05ad79a3fb39b95adfc3fd6910cbed503b7aeff
  etag: '"5a24187f-b2f82"'
depends:
- base.bst
variables:
  conf-local: --disable-bdjava-jar
