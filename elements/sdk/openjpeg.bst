kind: cmake
sources:
- kind: tar
  url: github_com:uclouvain/openjpeg/archive/v2.3.1.tar.gz
depends:
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: >-
    -DOPENJPEG_INSTALL_LIB_DIR=%{lib}
