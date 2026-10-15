kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/51/gnome-system-monitor-51.1.tar.xz
  ref: acf0a61b02b18d20e29cc36cd275ed48fe5e2beeaac99140b299e659cb6493c6
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
