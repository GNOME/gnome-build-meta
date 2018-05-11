kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-user-share/3.28/gnome-user-share-3.28.0.tar.xz
  ref: 09d4d31258f684db43f07a0a9e1fb784c4a7c5504d5b818afcda57da58b69213
depends:
- core-deps/gtk+-3.bst
- core-deps/libnotify.bst
- core/gnome-bluetooth.bst
- core/nautilus.bst
- base.bst
