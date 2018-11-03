kind: autotools
sources:
- kind: tar
  url: github_com:ibus/ibus-anthy/releases/download/1.5.6/ibus-anthy-1.5.6.tar.gz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/ibus.bst
- sdk/pygobject.bst
- world/anthy.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-private-png=yes --with-python=python3
