kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gcr
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
