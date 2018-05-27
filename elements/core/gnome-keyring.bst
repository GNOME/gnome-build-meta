kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-keyring
  track: master
depends:
- core-deps/gcr.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
