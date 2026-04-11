kind: meson
sources:
- kind: git_repo
  url: videolan:libdvdcss.git
  track: '*.*.*'
  ref: 1.5.0-0-gc838ca97553aeb8505b7baf02b9a90f8505de212

build-depends:
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Denable_docs=true
