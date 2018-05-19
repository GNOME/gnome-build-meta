kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/vala
  track: master
- kind: patch
  path: files/vala/disable-valadoc.patch
depends:
- sdk/glib.bst
- filename: sdk/vala-bootstrap.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-unversioned --disable-valadoc
