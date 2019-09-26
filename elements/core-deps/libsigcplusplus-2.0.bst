kind: autotools
sources:
- kind: git_tag
  url: github_com:libsigcplusplus/libsigcplusplus.git
  track: libsigc++-2-10
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/mm-common.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-documentation
