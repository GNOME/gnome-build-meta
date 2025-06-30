kind: meson

sources:
- kind: git_repo
  url: gnome:gtkmm.git
  track: master
  ref: 4.19.0-0-g645d4e271365fb1946ac0ceeda881c8bee8aba0e

build-depends:
- core-deps/graphviz.bst
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

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
