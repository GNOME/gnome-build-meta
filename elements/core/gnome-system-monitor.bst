kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/3.36/gnome-system-monitor-3.36.0.tar.xz
  ref: 40a70b9ffb537ed31a6c7f8aaab89a460802494fe02516e40f9b2270b89237be
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gtkmm-3.bst
- core-deps/libgtop.bst
- core-deps/polkit.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
