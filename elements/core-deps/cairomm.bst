kind: meson

sources:
- kind: git_repo
  url: freedesktop:cairo/cairomm.git
  track: 1.*
  ref: 1.19.0-0-g398889aa0bf74521e7d9e71aae477e17664abc54

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
