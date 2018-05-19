kind: autotools
sources:
- kind: git
  url: git_gnome_org:vala-bootstrap
  track: master
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-build-from-vala --disable-vapigen
