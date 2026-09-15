kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/51/gnome-system-monitor-51.0.tar.xz
  ref: 8887b03427230ac0816d4b0c801ce6628ad1fc9139ed3072914e9faa881ba868
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- core-deps/catch2.bst
- freedesktop-sdk.bst:components/itstool.bst

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
