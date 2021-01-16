kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/40/gnome-system-monitor-40.alpha.tar.xz
  ref: 8b88716e9eb5f53431e7724304d202ac8258189e0f074109800f48b6c0eff47b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
