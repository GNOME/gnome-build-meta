kind: autotools
sources:
- kind: tar
  url: gnome_downloads:atkmm/2.28/atkmm-2.28.2.tar.xz
  ref: a0bb49765ceccc293ab2c6735ba100431807d384ffa14c2ebd30e07993fd2fa4
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/glibmm-2.4.bst
- sdk/atk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-maintainer-mode
