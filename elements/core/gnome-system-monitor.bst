kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/48/gnome-system-monitor-48.alpha.tar.xz
  ref: ffee8aa778c1078429373545c73b02259db940e0fe606a46c02d0304f7ee05b9
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
