kind: autotools
sources:
- kind: git
  url: git_gnome_org:libsigcplusplus
  track: master
depends:
- core-deps/mm-common.bst
- base.bst
variables:
  conf-local: --disable-documentation
