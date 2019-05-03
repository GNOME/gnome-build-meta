kind: autotools
sources:
- kind: tar
  url: http://http.debian.net/debian/pool/main/n/neon27/neon27_0.30.2.orig.tar.gz
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --enable-shared
