kind: autotools
sources:
- kind: tar
  url: http://http.debian.net/debian/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz
  ref: e1f85c8b6ebd0ed3ca72fa0ae97b65006f6d0bd0cd6f4ac24bed103cb5497bf5
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-cmd: ./dist/configure
