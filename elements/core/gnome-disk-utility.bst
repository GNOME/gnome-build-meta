kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-disk-utility/3.32/gnome-disk-utility-3.32.0.tar.xz
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
