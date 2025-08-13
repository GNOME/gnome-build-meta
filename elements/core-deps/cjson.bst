kind: cmake

sources:
- kind: tar
  url: github_files:DaveGamble/cJSON/archive/refs/tags/v1.7.18.tar.gz
  ref: 3aa806844a03442c00769b83e99970be70fbef03735ff898f4811dd03b9f5ee5

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
