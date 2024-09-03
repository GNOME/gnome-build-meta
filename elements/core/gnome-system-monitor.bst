kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/47/gnome-system-monitor-47.rc.tar.xz
  ref: fd01dc2b1b674ccbf3d9a17b5c1a299562824922139803e903c5db8a73ee7855
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
