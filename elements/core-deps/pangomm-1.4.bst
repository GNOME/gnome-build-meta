kind: meson
sources:
- kind: tar
  url: gnome_downloads:pangomm/2.46/pangomm-2.46.2.tar.xz
  ref: 57442ab4dc043877bfe3839915731ab2d693fc6634a71614422fb530c9eaa6f4
build-depends:
- core-deps/graphviz.bst
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/cairomm-1.0.bst
- core-deps/glibmm-2.4.bst
- sdk/pango.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dwarnings=min
