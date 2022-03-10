kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/42/gnome-system-monitor-42.rc.tar.xz
  ref: 09f49c81b65956f1d6dd99ee9a9411264bf348f4516c8bba9bab0b5ffc7c0f47
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
