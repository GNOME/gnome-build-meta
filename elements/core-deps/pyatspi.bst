kind: autotools
sources:
- kind: git_repo
  url: gnome:pyatspi2.git
  track: master
  ref: PYATSPI_2_46_1-2-ge4fc21c641aa20512000cc4d5d9fd9834ff550f2
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
