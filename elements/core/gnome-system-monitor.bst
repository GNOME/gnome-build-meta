kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/48/gnome-system-monitor-48.0.tar.xz
  ref: e4e5b345fbd4d7dc2f40ad6c62305ae5c7cc2b465ce95988692a54af347532a3
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
