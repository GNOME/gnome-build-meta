kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-logs/3.34/gnome-logs-3.34.0.tar.xz
  ref: 15f4af7085c88321624dc9416f07e7f997fc0fe4c6dd585bce512b11d2e34e9a
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
