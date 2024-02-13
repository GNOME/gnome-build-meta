kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.46/pyatspi-2.46.1.tar.xz
  ref: f91f6a57434e9c07d13d5c4bf819dd78e8ee605aac2ae45d8c64c28114fb041b
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
