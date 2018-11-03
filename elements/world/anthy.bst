kind: autotools
sources:
- kind: tar
  url: http://http.debian.net/debian/pool/main/a/anthy/anthy_0.3.orig.tar.gz
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
