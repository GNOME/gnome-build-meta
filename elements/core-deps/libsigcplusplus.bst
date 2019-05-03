kind: autotools
sources:
- kind: git
  url: github_com:libsigcplusplus/libsigcplusplus.git
  track: master
depends:
- core-deps/mm-common.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --disable-documentation
