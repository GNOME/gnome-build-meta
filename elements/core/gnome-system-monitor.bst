kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/41/gnome-system-monitor-41.rc.tar.xz
  ref: 8a3cbfbf7ae3d0d70e25a3d0175be99515e2d95127b05eb0a61485754559ca8d
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
