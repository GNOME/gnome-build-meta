kind: meson
sources:
- kind: tar
  url: gnome_downloads:atkmm/2.28/atkmm-2.28.2.tar.xz
  ref: a0bb49765ceccc293ab2c6735ba100431807d384ffa14c2ebd30e07993fd2fa4
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
