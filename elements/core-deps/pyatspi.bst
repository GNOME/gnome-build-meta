kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.45/pyatspi-2.45.1.tar.xz
  ref: bba7c2663430e55123a443f37a5a29e7beb8b01649bdb2969ad3eb941daac1ae
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
