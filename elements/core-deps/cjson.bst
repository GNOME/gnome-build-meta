kind: cmake

sources:
- kind: tar
  url: github_files:DaveGamble/cJSON/archive/refs/tags/v1.7.17.tar.gz
  ref: c91d1eeb7175c50d49f6ba2a25e69b46bd05cffb798382c19bfb202e467ec51c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
