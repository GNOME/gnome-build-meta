kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/3.37/gnome-system-monitor-3.37.92.tar.xz
  ref: 2f4ee6e5c48f108c32dac39ec0b51228fdce5c486541a07b8d66b70acac85549
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
