kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.38/pyatspi-2.38.1.tar.xz
  ref: e49f27e9e29c24ac3ccb837a7f221952532940da0344e7e8c0899924aeb98151
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
