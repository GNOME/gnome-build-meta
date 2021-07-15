kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/40/gnome-system-monitor-40.1.tar.xz
  ref: fdb30f4367907aab86d7c2bb76a7b773ba850b765c9666a39f42abfe22691d1a
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
