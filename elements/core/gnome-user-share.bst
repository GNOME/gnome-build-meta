kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-user-share
  track: master
depends:
- core-deps/gtk+-3.bst
- core-deps/libnotify.bst
- core/gnome-bluetooth.bst
- core/nautilus.bst
- base.bst
