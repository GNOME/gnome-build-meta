kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/51/gnome-system-monitor-51.rc.tar.xz
  ref: 7967fe230d33591cd33c268df5d01a035a0826d4d2f0ed8feb9106f0f47604bd
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
