kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/46/gnome-system-monitor-46.rc.tar.xz
  ref: 1b179b25ac2e5872a2c0cc03a3dd9452ba88d7c4336a7734e06061f3a6fdc3e2
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
