kind: autotools

sources:
- kind: git_repo
  url: github:ibus/ibus-anthy.git
  track: '*.*'
  ref: 1.5.19-alpha4-0-g2cf02961a7029c084cee932ee6c9591d8f24330b

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- sdk/gobject-introspection.bst

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
