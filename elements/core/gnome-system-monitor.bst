kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/47/gnome-system-monitor-47.0.tar.xz
  ref: ede7b925eb714d8b3c2bfbf7405a1b714494fe47e02f0af08f5837b3e256547f
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
