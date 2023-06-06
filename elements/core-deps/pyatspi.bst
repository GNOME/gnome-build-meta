kind: autotools
sources:
- kind: git_repo
  url: gnome:pyatspi2.git
  track: master
  ref: PYATSPI_2_46_0-8-gc3206e409f6caf3f7695210a2cfa79db8255f74c
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
