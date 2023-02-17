kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/44/gnome-system-monitor-44.beta.tar.xz
  ref: 1207ef92e6f48b7c5ac8075dad996a30bd185b551bd84b88272ea39d40d60ff2
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
