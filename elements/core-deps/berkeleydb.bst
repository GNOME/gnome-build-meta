kind: autotools
sources:
- kind: tar
  url: http://http.debian.net/debian/pool/main/d/db5.3/db5.3_5.3.28.orig.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-cmd: ./dist/configure
