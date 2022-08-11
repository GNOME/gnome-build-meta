kind: autotools
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.45/pyatspi-2.45.90.tar.xz
  ref: 30ebf8fc1cd61328734a5cb31b64f65b9a337154994df93a5091d74e1e8cefb9
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
