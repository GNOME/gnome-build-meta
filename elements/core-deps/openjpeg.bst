kind: cmake
sources:
- kind: tar
  url: github_com:uclouvain/openjpeg/archive/v2.3.0.tar.gz
  ref: 3dc787c1bb6023ba846c2a0d9b1f6e179f1cd255172bde9eb75b01f1e6c7d71a
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: -DOPENJPEG_INSTALL_LIB_DIR=%{lib}
