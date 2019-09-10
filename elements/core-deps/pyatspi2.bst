kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.34/pyatspi-2.34.0.tar.xz
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- filename: components/python3.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-python=python3
