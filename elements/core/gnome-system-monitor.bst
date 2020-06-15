kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/3.36/gnome-system-monitor-3.36.1.tar.xz
  ref: 866b47ab0f4c75b0ec57d6300337a7373463aaad5df95eddfe5354c22be7bca1
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
