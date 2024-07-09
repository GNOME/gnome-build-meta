kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/47/gnome-system-monitor-47.alpha.tar.xz
  ref: b671ec8a4141b1aebdfec30b9cc8249baad391082dcfd747bc09b5dfb08fe218
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
