kind: meson

sources:
- kind: git_repo
  url: videolan:libdvdcss.git
  track: '*.*.*'
  ref: 1.6.0-0-g9de0528e142d6dd31c4d198130d4a48ff3397d2b

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/doxygen.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Denable_docs=true
