kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-font-viewer
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- base.bst
