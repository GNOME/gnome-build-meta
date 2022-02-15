kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/42/gnome-system-monitor-42.alpha.tar.xz
  ref: a6e2b79888249bf610a5568e0af8eada014d890d4fc17c566f61a4db5947a8ca
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
