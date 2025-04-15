kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/48/gnome-system-monitor-48.1.tar.xz
  ref: 133c3a6e286366e659fd2d80582409a7bd5edae456e63c4f69ccf66ed6fc6638
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
