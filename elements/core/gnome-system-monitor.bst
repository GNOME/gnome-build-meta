kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/3.38/gnome-system-monitor-3.38.0.tar.xz
  ref: 73bf7ab4d5503c2567d76f831c9ae3fe27c31495761889ad3b351ef4c068aff4
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
