kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.37/pyatspi-2.37.90.tar.xz
  ref: 4e17ace59c6c83ac941d74f76acb94c00fb22b56baa6eaab313f5e1aab72fc38
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --with-python=python3
