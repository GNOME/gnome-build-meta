kind: meson

sources:
# We need to use git_repo rather than a tarball because cairographics.org is unreliable.
# https://gitlab.freedesktop.org/freedesktop/freedesktop/-/issues/1184
- kind: tar
  url: gnome_downloads:cairomm/1.15/cairomm-1.15.4.tar.xz
  ref: 4cd9fd959538953dfa606aaa7a31381e3193eebf14d814d97ef928684ee9feb5
build-depends:
- core-deps/graphviz.bst
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libsigcplusplus.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dwarnings=min
