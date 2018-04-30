kind: meson
sources:
- kind: git
  url: git_gnome_org:dconf-editor
  track: master
depends:
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- base.bst
