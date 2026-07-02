kind: meson

sources:
- kind: tar
  url: gnome_downloads:glibmm/2.88/glibmm-2.88.1.tar.xz
  ref: c139f962b1575c8827cd39d1ac21b7a367be3bda1409c0c7e21a29090f371506
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
