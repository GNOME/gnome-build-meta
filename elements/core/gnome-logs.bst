kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-logs/3.34/gnome-logs-3.34.0.tar.xz
  ref: 15f4af7085c88321624dc9416f07e7f997fc0fe4c6dd585bce512b11d2e34e9a
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- filename: components/systemd.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
