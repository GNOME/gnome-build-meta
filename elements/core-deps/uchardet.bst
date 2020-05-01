kind: cmake
sources:
- kind: tar
  url: https://www.freedesktop.org/software/uchardet/releases/uchardet-0.0.7.tar.xz
  ref: 8351328cdfbcb2432e63938721dd781eb8c11ebc56e3a89d0f84576b96002c61
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
