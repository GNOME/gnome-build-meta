kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pangomm/2.42/pangomm-2.42.0.tar.xz
  ref: ca6da067ff93a6445780c0b4b226eb84f484ab104b8391fb744a45cbc7edbf56
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/cairomm-1.0.bst
- core-deps/glibmm-2.4.bst
- sdk/atk.bst
- sdk/pango.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-maintainer-mode
