kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/42/gnome-system-monitor-42.0.tar.xz
  ref: 13239d22032201a22bd29833c575b684816700d2de168a1530223577c5c075dc
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
