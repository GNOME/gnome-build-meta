kind: meson

sources:
- kind: git_repo
  url: gnome:gtkmm.git
  track: master
  ref: 4.24.0-4-gd3ff26d88c1a14e1f0ed85c70a11560e092d5307

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- core-deps/mm-common.bst
- freedesktop-sdk-extra.bst:components/graphviz.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst

depends:
- core-deps/cairomm.bst
- core-deps/glibmm.bst
- core-deps/pangomm.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dwarnings=min
