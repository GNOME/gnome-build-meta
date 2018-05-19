kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:Archive/vala-bootstrap.git
  track: master
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-build-from-vala --disable-vapigen
