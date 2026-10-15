kind: meson

sources:
- kind: tar
  url: gnome_downloads:pangomm/2.58/pangomm-2.58.0.tar.xz
  ref: 217514c1a65035c2fce6e69e33b0d92bafa2594cc474e995a4473441b10f3a33
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
- sdk/pango.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dwarnings=min
