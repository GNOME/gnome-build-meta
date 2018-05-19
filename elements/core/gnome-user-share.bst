kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-user-share
  track: master
depends:
- core/gnome-bluetooth.bst
- core/nautilus.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
