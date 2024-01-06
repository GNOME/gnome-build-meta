kind: autotools
sources:
- kind: git_repo
  url: gnome:pyatspi2.git
  track: master
  ref: PYATSPI_2_46_1-0-g8c69016b38d0e4caaf4c986938ea3410fb7351b6
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
