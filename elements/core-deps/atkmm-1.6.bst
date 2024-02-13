kind: meson
sources:
- kind: tar
  url: gnome_downloads:atkmm/2.28/atkmm-2.28.4.tar.xz
  ref: 0a142a8128f83c001efb8014ee463e9a766054ef84686af953135e04d28fdab3
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
