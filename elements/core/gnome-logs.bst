kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-logs/43/gnome-logs-43.0.tar.xz
  ref: 33a93b975ec27c8487825048aa7b8af7d5c23565abcf7b74c902ab7b3ec20861
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
