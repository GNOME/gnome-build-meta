kind: meson

sources:
- kind: tar
  url: gnome_downloads:glibmm/2.85/glibmm-2.85.0.tar.xz
  ref: 0771306711299fbf62e53c752d53ed581635127167a6cc79ae05f2b8421d29d7
build-depends:
- core-deps/graphviz.bst
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- core-deps/libsigcplusplus.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dwarnings=min
