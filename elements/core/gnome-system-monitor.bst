kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-system-monitor
  track: master
depends:
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/polkit.bst
- base.bst
