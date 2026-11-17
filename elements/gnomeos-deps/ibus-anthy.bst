kind: autotools

sources:
- kind: git_repo
  url: github:ibus/ibus-anthy.git
  track: '*.*'
  ref: 1.5.19-alpha3-0-g7b6d1d48e809b78ae570fc31debcdc9c6158329f

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
