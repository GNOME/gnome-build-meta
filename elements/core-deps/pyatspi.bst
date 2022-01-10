kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.38/pyatspi-2.38.2.tar.xz
  ref: 0e7089c0b6309614b53620836b3462d7f91284e436fe4929ba1619a841cf1185
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
