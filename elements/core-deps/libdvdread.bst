kind: meson

sources:
- kind: git_repo
  url: videolan:libdvdread.git
  track: '*.*.*'
  ref: 7.1.0-0-g97c3d8f6157ecb745a55be9886308dabe1daad24

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/doxygen.bst

depends:
- core-deps/libdvdcss.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Denable_docs=true
