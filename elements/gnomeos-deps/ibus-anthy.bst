kind: autotools

sources:
- kind: tar
  url: 
    github_files:ibus/ibus-anthy/releases/download/1.5.17/ibus-anthy-1.5.17.tar.gz
  ref: 9e1d28ad7da2be5e0d9c0eb0d8fb7557fc89770aa2237272debe197bd61abd40

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
