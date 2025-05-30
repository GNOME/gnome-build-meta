kind: meson

sources:
# We need to use git_repo rather than a tarball because cairographics.org is unreliable.
# https://gitlab.freedesktop.org/freedesktop/freedesktop/-/issues/1184
- kind: git_repo
  url: freedesktop:cairo/cairomm.git
  track: 1.*
  ref: 1.18.0-0-ge0bad547705348657d09db4c9375833d8890cf54
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
