kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/pyatspi/2.31/pyatspi-2.31.2.tar.xz
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-python=python3
