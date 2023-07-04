kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/45/gnome-system-monitor-45.alpha.tar.xz
  ref: 6ba2336b8a6e28f2b405334c7c4327c6d7d5a9afbc3e02b073573278579de4ce
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
