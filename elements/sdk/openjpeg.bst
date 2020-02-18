kind: cmake
sources:
- kind: tar
  url: github_com:uclouvain/openjpeg/archive/v2.3.1.tar.gz
  ref: 63f5a4713ecafc86de51bfad89cc07bb788e9bba24ebbf0c4ca637621aadb6a9
depends:
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: >-
    -DOPENJPEG_INSTALL_LIB_DIR=%{lib}
