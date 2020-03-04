kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-system-monitor/3.35/gnome-system-monitor-3.35.92.tar.xz
  ref: 1e9f0b90fe33bc4ca18fbb0e5161cd0b214f416b1d797376a04d4601ccf4febb
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
