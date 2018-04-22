kind: autotools
sources:
- kind: tar
  url: http://http.debian.net/debian/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz
depends:
- base.bst
variables:
  # autoreconf doesn't work for this package
  autogen: cp /usr/share/automake*/config.{sub,guess} dist/
  conf-cmd: ./dist/configure
