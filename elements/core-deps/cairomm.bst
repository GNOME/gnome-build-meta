kind: meson

sources:
- kind: git_repo
  url: freedesktop:cairo/cairomm.git
  track: 1.*
  ref: 1.19.1-0-ge2910c76adeeb69933509b991d67490ccb563161

build-depends:
- core-deps/graphviz.bst
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libsigcplusplus.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dwarnings=min
