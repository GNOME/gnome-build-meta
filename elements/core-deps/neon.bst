depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: db0bd8cdec329b48f53a6f00199c92d5ba40b0f015b153718d1b15d3d967fbca
  url: http://http.debian.net/debian/pool/main/n/neon27/neon27_0.30.2.orig.tar.gz
variables:
  conf-local: --enable-shared
