kind: autotools
sources:
- kind: tar
  url: http://http.debian.net/debian/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: dist/
  conf-cmd: ./dist/configure
