kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/3.37/gnome-system-monitor-3.37.90.tar.xz
  ref: a2bf00a744be836279e1d12d40cfb37b8ad8e150aa9ef6878174399bf2451f14
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
