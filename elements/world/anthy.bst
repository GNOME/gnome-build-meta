kind: autotools
sources:
- kind: tar
  url: http://http.debian.net/debian/pool/main/a/anthy/anthy_0.3.orig.tar.gz
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
