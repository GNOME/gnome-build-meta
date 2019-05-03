kind: autotools
sources:
- kind: tar
  url: github_com:ibus/ibus-anthy/releases/download/1.5.11/ibus-anthy-1.5.11.tar.gz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/ibus.bst
- sdk/pygobject.bst
- world/anthy.bst
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
    --enable-private-png=yes
    --with-python=python3
