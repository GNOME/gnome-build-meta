kind: autotools
sources:
- kind: git
  url: git_gnome_org:libsigcplusplus
  track: libsigc++-2-10
depends:
- core-deps/mm-common.bst
- base.bst
variables:
  conf-local: --disable-documentation
