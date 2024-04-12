kind: autotools
sources:
- kind: git_repo
  url: gnome:pyatspi2.git
  track: master
  ref: PYATSPI_2_46_1-4-ge4faa53c513f57968e919e2261061872d6cd4d0e
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
