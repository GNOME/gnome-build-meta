kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/50/gnome-system-monitor-50.beta.1.tar.xz
  ref: 7ae06b4b2b2d66b2b59a8176fecf3d2d13246d8fff940eb24ce38f53e41548f4
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
