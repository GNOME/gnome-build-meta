kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-disk-utility/3.29/gnome-disk-utility-3.29.92.tar.xz
  ref: 6b9234bd0909763c815fe38029a6673ac854d96103a32185539510ce16986728
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
- filename: base.bst
  junction: freedesktop-sdk.bst
