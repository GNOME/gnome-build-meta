kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.34/pyatspi-2.34.0.tar.xz
  ref: 97bc5248cc376348ad5cf8a2e9929d3847a7710ad99fa72b52ccb40f64396e48
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
