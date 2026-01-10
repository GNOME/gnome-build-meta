kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/50/gnome-system-monitor-50.alpha.tar.xz
  ref: aa74311d032955f4fe7e571fcc3aada81f582ab5eb6b78db8e6f46528aa13308
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
