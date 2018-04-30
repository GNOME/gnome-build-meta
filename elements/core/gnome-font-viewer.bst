kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-font-viewer
  track: master
depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- base.bst
