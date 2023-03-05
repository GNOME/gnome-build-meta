kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/44/gnome-system-monitor-44.rc.tar.xz
  ref: 0a734b4750eba6152754917d6f1747f740663e8b468baf4ea9e809b512b23826
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
