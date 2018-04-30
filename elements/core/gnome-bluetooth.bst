kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-bluetooth
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- sdk/libcanberra.bst
- sdk/libnotify.bst
- base.bst
