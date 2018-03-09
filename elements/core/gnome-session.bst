kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-session
  track: master
depends:
- core-deps/gtk+-3.bst
- core-deps/json-glib.bst
- core-deps/meson.bst
- core-deps/upower.bst
- core-deps/xmlto.bst
- core/gnome-desktop.bst
- base.bst
