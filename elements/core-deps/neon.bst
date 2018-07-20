kind: autotools
sources:
- kind: tar
  url: http://http.debian.net/debian/pool/main/n/neon27/neon27_0.30.2.orig.tar.gz
  ref: db0bd8cdec329b48f53a6f00199c92d5ba40b0f015b153718d1b15d3d967fbca
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-shared
