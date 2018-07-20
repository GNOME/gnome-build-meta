kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-system-monitor/3.29/gnome-system-monitor-3.29.3.tar.xz
  ref: bd652d788e67ec46fc1f065c77f5838a985dea53a5cf97382ba766beeb0c3d18
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- core-deps/librsvg.bst
- core-deps/polkit.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
