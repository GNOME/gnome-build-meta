kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-disk-utility.git
  track: master
depends:
- core-deps/libdvdread.bst
- core-deps/pwquality.bst
- core-deps/udisks2.bst
- core/gnome-settings-daemon.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Delogind=disabled
