kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-logs/3.36/gnome-logs-3.36.0.tar.xz
  ref: 44766b61a6899e1b4c51ed7a8840608e6b9277f341f856a1e5c08dbd7a733670
build-depends:
- sdk/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
