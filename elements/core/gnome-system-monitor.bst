kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/40/gnome-system-monitor-40.beta.tar.xz
  ref: ac2c5235657cf8e01032d19cdbed4021a2177a4eea11e13cdc7eaf8c1a0bc56b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
