kind: autotools

sources:
- kind: git_repo
  url: github:ibus/ibus-anthy.git
  track: '*.*'
  ref: 1.5.17-0-g901fdec1208d11c293e43add60fe5c143f0817a7

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
