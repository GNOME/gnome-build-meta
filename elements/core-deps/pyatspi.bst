kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.36/pyatspi-2.36.0.tar.xz
  ref: 5136c1bf919e101d4ec901a276e86ea60e5881a8ff7763e356f19840e5ffe1dd
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
