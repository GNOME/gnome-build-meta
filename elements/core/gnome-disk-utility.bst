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
kind: meson
sources:
- kind: tar
  ref: 5ef10baf89299339b57216b168eae8a4091c7e47569b64ac6512af06e0752e12
  url: https://download.gnome.org/sources/gnome-disk-utility/3.29/gnome-disk-utility-3.29.90.tar.xz
