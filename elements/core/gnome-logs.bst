kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-logs/3.30/gnome-logs-3.30.0.tar.xz
  ref: d05737e8f1e934fcea4f9ac6afb54b6047c239e7b0ca5a03a03c1f7d211753e7
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: vm/linux-vm-boot/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
