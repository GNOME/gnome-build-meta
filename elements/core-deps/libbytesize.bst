kind: autotools
sources:
- kind: tar
  url: github_com:storaged-project/libbytesize/releases/download/1.2/libbytesize-1.2.tar.gz
depends:
- core-deps/mpfr.bst
- filename: components/python3.bst
  junction: freedesktop-sdk.bst
- filename: components/gettext.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
