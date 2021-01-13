kind: autotools
sources:
- kind: tar
  url: gnome_downloads:atkmm/2.36/atkmm-2.36.0.tar.xz
  ref: c93fa9f3876536391b54c307a923b7788e79796ace69a5e9141d67398c019973
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/glibmm.bst
- sdk/atk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-maintainer-mode
