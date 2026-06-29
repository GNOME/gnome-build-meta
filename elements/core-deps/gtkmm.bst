kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtkmm/4.23/gtkmm-4.23.0.tar.xz
  ref: d3f7e7aab6e99d33fe61a609a759a9fb086aad33c0a9428ad3c1eacca2c01460
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
- core-deps/pangomm.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dwarnings=min
