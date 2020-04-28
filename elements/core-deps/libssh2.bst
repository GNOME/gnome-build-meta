kind: cmake
sources:
- kind: tar
  url: github_com:libssh2/libssh2/archive/libssh2-1.8.0.tar.gz
  ref: 973f63f98141d68b4a1bc85791ee29411eeab12a6230ae1aca9c368550ccafae
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=1
