kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/40/gnome-system-monitor-40.rc.tar.xz
  ref: 349a84397282f0749a3274185f68845207ab556fca12fdddda39123d878e773d
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
