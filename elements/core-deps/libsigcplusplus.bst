kind: autotools
sources:
- kind: git
  url: github_com:libsigcplusplus/libsigcplusplus.git
  track: master
depends:
- core-deps/mm-common.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --disable-documentation
