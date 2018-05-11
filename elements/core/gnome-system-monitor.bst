kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-system-monitor/3.28/gnome-system-monitor-3.28.2.tar.xz
  ref: eb87863f2505ae4ad693b3b6fe79817b6a9d57f6ed7de98bb2dbf95610b29198
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- core-deps/librsvg.bst
- core/adwaita-icon-theme.bst
- base.bst
