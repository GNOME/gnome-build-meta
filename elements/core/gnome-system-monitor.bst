kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/41/gnome-system-monitor-41.0.tar.xz
  ref: c7fc44c61949b794b0289968ebbbcc0c15f8cfc3d9e45bfaa81ed45c12139e5f
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
