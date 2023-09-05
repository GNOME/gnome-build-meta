kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/45/gnome-system-monitor-45.0.1.tar.xz
  ref: 43f6b7805c74532490edb8822ebdf8b3cf2c5ef842a51252a14c34715f5d49b4
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
