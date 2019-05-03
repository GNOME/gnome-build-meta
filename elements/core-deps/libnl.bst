kind: autotools
sources:
- kind: tar
  url: github_com:thom311/libnl/releases/download/libnl3_4_0/libnl-3.4.0.tar.gz
depends:
- filename: base/bison.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
