kind: autotools
sources:
- kind: tar
  url: gnome_downloads:glibmm/2.61/glibmm-2.61.1.tar.xz
depends:
- core-deps/libsigcplusplus.bst
- sdk/glib.bst
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
