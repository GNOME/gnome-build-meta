kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libsigcplusplus
  track: libsigc++-2-10
depends:
- core-deps/mm-common.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-documentation
