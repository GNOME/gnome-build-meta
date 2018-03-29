kind: autotools
sources:
- kind: tar
  url: http://http.debian.net/debian/pool/main/n/neon27/neon27_0.30.2.orig.tar.gz
depends:
- base.bst
variables:
  conf-local: --enable-shared
