kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-disk-utility
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libnotify.bst
- core-deps/libsecret.bst
- core-deps/meson.bst
- core/adwaita-icon-theme.bst
- core/gnome-settings-daemon.bst
- base.bst
