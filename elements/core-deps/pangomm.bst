kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pangomm/2.43/pangomm-2.43.1.tar.xz
depends:
- core-deps/cairomm.bst
- core-deps/glibmm.bst
- sdk/atk.bst
- sdk/pango.bst
- filename: base/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --enable-maintainer-mode
