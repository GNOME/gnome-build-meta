kind: autotools
sources:
- kind: tar
  url: gnome_downloads:atkmm/2.28/atkmm-2.28.0.tar.xz
  ref: 4c4cfc917fd42d3879ce997b463428d6982affa0fb660cafcc0bc2d9afcedd3a
depends:
- core-deps/glibmm-2.4.bst
- sdk/atk.bst
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
