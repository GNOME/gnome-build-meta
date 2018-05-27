kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-disk-utility
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libdvdread.bst
- core-deps/libnotify.bst
- core-deps/libsecret.bst
- core-deps/pwquality.bst
- core-deps/udisks2.bst
- core/adwaita-icon-theme.bst
- core/gnome-settings-daemon.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
