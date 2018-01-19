kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-bluetooth
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtk-doc.bst
- core-deps/libnotify.bst
- core-deps/meson.bst
- base.bst
