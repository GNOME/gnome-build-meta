kind: meson

sources:
- kind: git_repo
  url: gnome:pangomm.git
  track: master
  ref: 2.56.1-20-g14575bcd341183b94bd4d34c1aebb13a4f580a1f

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
