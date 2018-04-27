kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-session
  track: master
depends:
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- core-deps/upower.bst
- core-deps/xmlto.bst
- core/gnome-desktop.bst
- base.bst
