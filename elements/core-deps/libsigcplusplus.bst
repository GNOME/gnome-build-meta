kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:libsigcplusplus
  track: master
depends:
- core-deps/mm-common.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-documentation
