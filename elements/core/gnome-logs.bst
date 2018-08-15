depends:
- core-deps/appstream-glib.bst
- core-deps/gtk+-3.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gsettings-desktop-schemas.bst
- filename: vm/linux-vm-boot/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: b306208977f7f3f89dd7ae3613dd7118a89875f2d806bf79be0c34f8798e2809
  url: https://download.gnome.org/sources/gnome-logs/3.29/gnome-logs-3.29.4.tar.xz
