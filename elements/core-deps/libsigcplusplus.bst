kind: meson

sources:
- kind: git_repo
  url: github:libsigcplusplus/libsigcplusplus.git
  track: "*.*.*"
  ref: 3.8.1-0-g9af9264ac1f3ff48f5cdffa7544caed518e2795b

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- core-deps/graphviz.bst
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/perl.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dvalidation=false
    -Dwarnings=min
