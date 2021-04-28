kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/40/gnome-system-monitor-40.0.tar.xz
  ref: 64e550f7f55552b09a79e1620aaebaae705d1668e4538e604e14c0ca323ae756
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
