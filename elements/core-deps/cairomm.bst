kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/cairomm/1.15/cairomm-1.15.4.tar.xz
  ref: 4cd9fd959538953dfa606aaa7a31381e3193eebf14d814d97ef928684ee9feb5
depends:
- core-deps/libsigcplusplus.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-documentation
