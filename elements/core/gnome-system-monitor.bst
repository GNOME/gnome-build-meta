kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/51/gnome-system-monitor-51.beta.tar.xz
  ref: d416c5dcd14a03951410f2db61b50687c2bce4a3d133d42c20b4d39015c6cc2c
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
