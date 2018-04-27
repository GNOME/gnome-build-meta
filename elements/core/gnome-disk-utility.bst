kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-disk-utility
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- core-deps/libdvdread.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- core-deps/pwquality.bst
- sdk/udisks2.bst
- sdk/adwaita-icon-theme.bst
- core/gnome-settings-daemon.bst
- base.bst
