kind: cmake

sources:
- kind: git_repo
  url: gnome:evolution-ews.git
  track: master
  ref: 3.62.0-3-g94c99d562b36b0b1c0463779b546dbd1ad806b33

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/cmake.bst
- core-deps/intltool.bst
- sdk/glib.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- core-deps/evolution-data-server.bst
- core-deps/libmspack.bst

variables:
  cmake-local: >-
    -DWITH_EVOLUTION=OFF
