kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/pyatspi/2.30/pyatspi-2.30.0.tar.xz
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-python=python3
