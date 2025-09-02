kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/49/gnome-system-monitor-49.rc.tar.xz
  ref: d5b627b7f34cf8e4820a6c7daca5ad232dc7c4e40c2c153f2876b43563bbe730
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
