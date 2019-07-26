kind: autotools
sources:
- kind: tar
  url: github_com:choehwanjin/ibus-hangul/releases/download/1.5.0/ibus-hangul-1.5.0.tar.gz
depends:
- filename: core-deps/intltool.bst
  type: build
- sdk/ibus.bst
- world/libhangul.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
