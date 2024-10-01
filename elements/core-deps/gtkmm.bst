kind: meson

sources:
- kind: git_repo
  url: gnome:gtkmm.git
  track: master
  ref: 4.16.0-2-g39c217556e09416f778b0669bbe726643bf3d4a0

build-depends:
- core-deps/graphviz.bst
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/cairomm.bst
- core-deps/glibmm.bst
- core-deps/pangomm.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dwarnings=min
