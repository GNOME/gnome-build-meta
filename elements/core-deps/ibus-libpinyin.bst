kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/ibus-libpinyin/archive/1.9.0.tar.gz
  ref: c8ec2450cec6f11870982b0130293dc967632631077029ca76c27ef349189e3e
depends:
- core-deps/libpinyin.bst
- sdk/ibus.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-lua-extension --with-python=python3
