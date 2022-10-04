kind: autotools
sources:
- kind: git_tag
  url: gnome:pyatspi2.git
  track: master
  ref: PYATSPI_2_46_0-6-gd0fbc0f88aa47b6899ddbd326af9ceac96b04414
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
