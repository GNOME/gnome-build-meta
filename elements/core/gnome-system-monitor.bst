kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/3.37/gnome-system-monitor-3.37.91.tar.xz
  ref: 0d79a18de5e8cf4bc4946ced5ff78fa65fcc2e2dd63382b08e314c6f94df1e95
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
