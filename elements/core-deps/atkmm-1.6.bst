kind: autotools
sources:
- kind: tar
  url: gnome_downloads:atkmm/2.28/atkmm-2.28.0.tar.xz
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
