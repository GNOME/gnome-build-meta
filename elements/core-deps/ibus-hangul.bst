kind: autotools
sources:
- kind: tar
  url: github_com:choehwanjin/ibus-hangul/releases/download/1.5.0/ibus-hangul-1.5.0.tar.gz
depends:
- core-deps/ibus.bst
- core-deps/libhangul.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
