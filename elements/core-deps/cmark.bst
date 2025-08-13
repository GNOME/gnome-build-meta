kind: cmake

sources:
- kind: tar
  url: github_files:commonmark/cmark/archive/refs/tags/0.31.1.tar.gz
  ref: 3da93db5469c30588cfeb283d9d62edfc6ded9eb0edc10a4f5bbfb7d722ea802

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
