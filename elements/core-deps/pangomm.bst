kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pangomm/2.43/pangomm-2.43.1.tar.xz
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/cairomm.bst
- core-deps/glibmm.bst
- sdk/atk.bst
- sdk/pango.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: --enable-maintainer-mode
