kind: autotools
sources:
- kind: tar
  url: gnome_downloads:atkmm/2.29/atkmm-2.29.1.tar.xz
depends:
- core-deps/glibmm.bst
- sdk/atk.bst
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
