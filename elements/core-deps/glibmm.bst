kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/glibmm/2.59/glibmm-2.59.1.tar.xz
depends:
- core-deps/libsigcplusplus.bst
- sdk/glib.bst
- filename: base/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
