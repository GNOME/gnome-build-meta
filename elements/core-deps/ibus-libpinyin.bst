depends:
- core-deps/ibus.bst
- core-deps/libpinyin.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: c8ec2450cec6f11870982b0130293dc967632631077029ca76c27ef349189e3e
  url: github_com:libpinyin/ibus-libpinyin/archive/1.9.0.tar.gz
variables:
  conf-local: --disable-lua-extension --with-python=python3
