kind: meson

sources:
- kind: git_repo
  url: gnome:pangomm.git
  track: master
  ref: 2.58.0-0-g9987a25f2bce09b7eb14841e1bdcca24df4f5aa2

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- core-deps/graphviz.bst
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst

depends:
- core-deps/cairomm.bst
- core-deps/glibmm.bst
- sdk/pango.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dwarnings=min
