kind: cmake
sources:
- kind: tar
  url: https://www.freedesktop.org/software/uchardet/releases/uchardet-0.0.6.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
