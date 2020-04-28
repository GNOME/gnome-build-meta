kind: cmake
sources:
- kind: tar
  url: https://www.freedesktop.org/software/uchardet/releases/uchardet-0.0.7.tar.xz
  ref: 3fc79408ae1d84b406922fa9319ce005631c95ca0f34b205fad867e8b30e45b1
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
