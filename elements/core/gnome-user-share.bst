kind: autotools
sources:
- url: https://download.gnome.org/sources/gnome-user-share/3.27/gnome-user-share-3.27.90.tar.xz
  kind: tar
  ref: 1e4ae20afaee849c10abdeb8024205cf3656219f1caf83f5fdf5852cd940a1f1
depends:
- core-deps/gtk+-3.bst
- core-deps/libnotify.bst
- core/gnome-bluetooth.bst
- core/nautilus.bst
- base.bst
