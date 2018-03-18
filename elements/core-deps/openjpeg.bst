kind: cmake
sources:
- kind: tar
  url: github_com:uclouvain/openjpeg/archive/v2.3.0.tar.gz
  ref: 3dc787c1bb6023ba846c2a0d9b1f6e179f1cd255172bde9eb75b01f1e6c7d71a
  etag: '"081de4b15f54cb4482035b7bf5e3fb443e4bc84b"'
depends:
- base.bst
variables:
  cmake-local: -DOPENJPEG_INSTALL_LIB_DIR=%{lib}
