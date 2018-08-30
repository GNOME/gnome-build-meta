kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-system-monitor/3.29/gnome-system-monitor-3.29.91.tar.xz
  ref: 75e73b2edc412100d31c2b912035cf28eef6ec352a8d4d3338f2ef9a96849937
depends:
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- core-deps/polkit.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
