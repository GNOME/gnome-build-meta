kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-screenshot
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/adwaita-icon-theme.bst
- base.bst
