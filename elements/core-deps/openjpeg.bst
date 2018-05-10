kind: cmake
sources:
- kind: tar
  url: github_com:uclouvain/openjpeg/archive/v2.3.0.tar.gz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: -DOPENJPEG_INSTALL_LIB_DIR=%{lib}
