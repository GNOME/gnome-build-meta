kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-disk-utility/3.29/gnome-disk-utility-3.29.2.tar.xz
  ref: 5a6d95a36e2940171d7b96cf40145a77c3398ae227df65560f153e241656d793
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
