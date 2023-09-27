kind: meson

sources:
- kind: git_repo
  url: gnome:gtkmm.git
  track: gtkmm-3-24
  ref: 3.24.8-3-g0d17c5fd0bde56eff6258d5a3aa966ca64d0b90c

build-depends:
- core-deps/graphviz.bst
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- world/atkmm-1.6.bst
- world/cairomm-1.0.bst
- world/glibmm-2.4.bst
- world/pangomm-1.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dwarnings=min
