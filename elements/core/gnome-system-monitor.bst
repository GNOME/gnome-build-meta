kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/45/gnome-system-monitor-45.0.tar.xz
  ref: bdc71cffe7a3208c36825c7073a45ca0ee6e32ac03c98d906495ccc94be26b9a
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
