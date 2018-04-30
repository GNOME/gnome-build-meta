kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-user-share
  track: master
depends:
- core/gnome-bluetooth.bst
- core/nautilus.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- base.bst
