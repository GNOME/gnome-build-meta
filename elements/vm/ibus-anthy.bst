kind: autotools

sources:
- kind: tar
  url: github_com:ibus/ibus-anthy/releases/download/1.5.12/ibus-anthy-1.5.12.tar.gz

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/ibus-daemon.bst
- sdk/glib.bst
- sdk/pygobject.bst
- vm/anthy.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --enable-private-png=yes
    --with-python=python3

config:
  configure-commands:
    (<):
    - rm {setup,engine}/python3/_config.py
