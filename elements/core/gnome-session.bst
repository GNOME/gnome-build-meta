kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-session
  track: master
depends:
- core-deps/gtk+-3.bst
- core-deps/json-glib.bst
- core-deps/meson.bst
- core/gnome-desktop.bst
- core/upower.bst
- base.bst
