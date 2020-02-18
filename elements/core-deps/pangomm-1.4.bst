kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pangomm/2.42/pangomm-2.42.0.tar.xz
  ref: ca6da067ff93a6445780c0b4b226eb84f484ab104b8391fb744a45cbc7edbf56
depends:
- core-deps/cairomm-1.0.bst
- core-deps/glibmm-2.4.bst
- sdk/atk.bst
- sdk/pango.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
