kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:cairo/cairomm.git
  track: master
depends:
- core-deps/libsigcplusplus.bst
- filename: components/cairo.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --disable-documentation
