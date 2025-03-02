kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/48/gnome-system-monitor-48.rc.tar.xz
  ref: 866dd2c727637f6753705d16a56fc667ab2a6a4809f17ef937452e1c545444cb
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
- freedesktop-sdk.bst:bootstrap-import.bst
