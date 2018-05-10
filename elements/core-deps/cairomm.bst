kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:cairomm
  track: master
depends:
- core-deps/libsigcplusplus.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-documentation
