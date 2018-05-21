kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-logs
  track: master
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
