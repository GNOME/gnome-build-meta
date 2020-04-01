kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pangomm/2.42/pangomm-2.42.1.tar.xz
  ref: 14bf04939930870d5cfa96860ed953ad2ce07c3fd8713add4a1bfe585589f40f
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
