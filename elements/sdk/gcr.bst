kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gcr
  track: master
depends:
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
