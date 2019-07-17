kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/3.32/gnome-system-monitor-3.32.1.tar.xz
depends:
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- core-deps/polkit.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
