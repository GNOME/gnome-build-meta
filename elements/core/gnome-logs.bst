kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-logs/3.29/gnome-logs-3.29.4.tar.xz
  ref: b306208977f7f3f89dd7ae3613dd7118a89875f2d806bf79be0c34f8798e2809
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
