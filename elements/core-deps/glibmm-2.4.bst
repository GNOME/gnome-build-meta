kind: autotools
sources:
- kind: tar
  url: gnome_downloads:glibmm/2.60/glibmm-2.60.0.tar.xz
depends:
- core-deps/libsigcplusplus-2.0.bst
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
  conf-local: --enable-maintainer-mode
