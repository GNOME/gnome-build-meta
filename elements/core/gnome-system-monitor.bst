kind: autotools
sources:
- url: https://download.gnome.org/sources/gnome-system-monitor/3.28/gnome-system-monitor-3.28.1.tar.xz
  kind: tar
  ref: 873f10d9282ea28892e9076eebd81daedf3a982945b22d79e50fd4ec6a69b771
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- core-deps/librsvg.bst
- core/adwaita-icon-theme.bst
- base.bst
