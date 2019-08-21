kind: autotools
sources:
- kind: tar
  url: gnome_downloads:atkmm/2.29/atkmm-2.29.1.tar.xz
depends:
- core-deps/glibmm.bst
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
  conf-local: >-
    --enable-maintainer-mode
