kind: cmake

sources:
- kind: tar
  url: github_files:google/highway/archive/refs/tags/1.0.7.tar.gz
  ref: 5434488108186c170a5e2fca5e3c9b6ef59a1caa4d520b008a9b8be6b8abe6c5

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
