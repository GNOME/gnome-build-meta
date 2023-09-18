kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/45/gnome-system-monitor-45.0.2.tar.xz
  ref: c5e272d90bf9986a3f8613d76e0d27fa42dfacee5c0192e73921bb94b1868a2e
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
