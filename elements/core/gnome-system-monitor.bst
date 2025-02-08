kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/47/gnome-system-monitor-47.1.tar.xz
  ref: d3c5714fd91fa7f05d6775e6797ccdab3149f131d1aa776a3352e2addb110f01
build-depends:
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
