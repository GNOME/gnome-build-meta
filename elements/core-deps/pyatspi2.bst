kind: autotools
sources:
- url: https://download.gnome.org/sources/pyatspi/2.26/pyatspi-2.26.0.tar.xz
  kind: tar
  ref: c696e47cf3d757dc515a2005ce22c7b580655a233ae6e47b39eefdfe4e8fb675
depends:
- core-deps/at-spi2-core.bst
- core-deps/pygobject.bst
- base.bst
variables:
  conf-local: --with-python=python3
