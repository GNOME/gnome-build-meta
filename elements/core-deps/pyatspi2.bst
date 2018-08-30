kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/pyatspi/2.29/pyatspi-2.29.90.tar.xz
  ref: 9f82bd3646b40293f1027317505592cca8cb2def3c3ae931baa586162d99a6cf
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-python=python3
