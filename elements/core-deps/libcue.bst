kind: cmake
sources:
- kind: tar
  url: github_files:lipnitsk/libcue/archive/v2.3.0.tar.gz
  ref: cc1b3a65c60bd88b77a1ddd1574042d83cf7cc32b85fe9481c99613359eb7cfe
build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=ON
