kind: meson
sources:
- kind: git_tag
  url: gnome:atkmm.git
  track: atkmm-2-28
  ref: 2.28.3-1-g3b87c0e07159e7f72e0fb999e7aca6dc360a332a
build-depends:
- core-deps/graphviz.bst
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/glibmm-2.4.bst
- sdk/at-spi2-core.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dwarnings=min
