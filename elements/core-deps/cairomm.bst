kind: meson

sources:
# We need to use git_repo rather than a tarball because cairographics.org is unreliable.
# https://gitlab.freedesktop.org/freedesktop/freedesktop/-/issues/1184
- kind: tar
  url: cairo:releases/cairomm-1.18.1.tar.xz
  ref: e0e996a979ee52c840dca3ee74f5d005e3259b94ddce58f255d3b6f47c8cb41d
build-depends:
- core-deps/graphviz.bst
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libsigcplusplus.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dwarnings=min
