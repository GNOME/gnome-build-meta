kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/50/gnome-system-monitor-50.rc.tar.xz
  ref: 2bba99a194e3ec10298ba6ec05a9bc2f83a9a5217c38ea8253f945eedc43e4dc
build-depends:
- core-deps/catch2.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/glibmm.bst
- core-deps/gtkmm.bst
- core-deps/libgtop.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
