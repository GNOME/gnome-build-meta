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
kind: meson
sources:
- kind: tar
  ref: 75e73b2edc412100d31c2b912035cf28eef6ec352a8d4d3338f2ef9a96849937
  url: https://download.gnome.org/sources/gnome-system-monitor/3.29/gnome-system-monitor-3.29.91.tar.xz
