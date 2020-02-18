kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.35/pyatspi-2.35.1.tar.xz
  ref: 86e608f7a8a2f9877084ed3848700757acea660a55a219214ba0ce9f8764311a
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
