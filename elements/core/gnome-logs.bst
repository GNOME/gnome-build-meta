kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-logs
  track: master
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: sdk/gnome-common.bst
  type: build
- filename: vm/linux-vm-boot/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
