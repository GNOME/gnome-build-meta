kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-keyring
  track: master
depends:
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
