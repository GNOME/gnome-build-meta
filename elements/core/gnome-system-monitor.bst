kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/47/gnome-system-monitor-47.beta.tar.xz
  ref: f8f27860d83129d5e3ba52cf7b23d69eefa282ff9d80fc1746856289cf3122f6
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
