kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-system-monitor
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- sdk/librsvg.bst
- sdk/polkit.bst
- sdk/adwaita-icon-theme.bst
- base.bst
