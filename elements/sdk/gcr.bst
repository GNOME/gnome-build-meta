kind: autotools
sources:
- kind: git
  url: git_gnome_org:gcr
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
