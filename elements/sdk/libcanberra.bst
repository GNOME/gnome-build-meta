kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:libcanberra-0.30.tar.xz
depends:
- sdk/gtk+-3.bst
- filename: components/libpulse.bst
  junction: freedesktop-sdk.bst
- filename: components/libtool.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
