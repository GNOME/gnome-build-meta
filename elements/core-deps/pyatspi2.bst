kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/pyatspi/2.29/pyatspi-2.29.1.tar.xz
  ref: a1dbeb4da1c33502e115550d426030e7ecd10c6bc24cfd293ceeaff2eb79c592
depends:
- core-deps/at-spi2-core.bst
- core-deps/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-python=python3
