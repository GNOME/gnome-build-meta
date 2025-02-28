kind: autotools

sources:
- kind: tar
  url: github_files:ibus/ibus-anthy/releases/download/1.5.12/ibus-anthy-1.5.12.tar.gz
  ref: e9e758ddd46ae292376eab171187fa8f20630f0a57cd128a41208fdcdfdf57bb

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/ibus-daemon.bst
- sdk/glib.bst
- sdk/pygobject.bst
- gnomeos-deps/anthy.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --enable-private-png=yes
    --with-python=python3

config:
  configure-commands:
    (<):
    - rm {setup,engine}/python3/_config.py
