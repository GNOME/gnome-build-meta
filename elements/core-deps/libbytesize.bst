kind: autotools
sources:
- kind: tar
  url: github_com:storaged-project/libbytesize/releases/download/1.2/libbytesize-1.2.tar.gz
depends:
- core-deps/mpfr.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
