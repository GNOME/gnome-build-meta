kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/pyatspi/2.30/pyatspi-2.30.0.tar.xz
  ref: a22a5f7553fec557b6532179063a55cde781126709099c7789d5e515446fe785
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-python=python3
