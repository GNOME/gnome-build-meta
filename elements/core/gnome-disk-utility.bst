kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-disk-utility
  track: master
depends:
- core-deps/libdvdread.bst
- core-deps/pwquality.bst
- core/gnome-settings-daemon.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/udisks2.bst
- base.bst
