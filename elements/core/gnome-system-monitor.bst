kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-system-monitor
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- core-deps/librsvg.bst
- core-deps/polkit.bst
- core/adwaita-icon-theme.bst
- base.bst
