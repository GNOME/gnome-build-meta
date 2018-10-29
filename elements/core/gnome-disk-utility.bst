kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-disk-utility/3.30/gnome-disk-utility-3.30.2.tar.xz
  ref: 967fb93f069529aa209a9c580882259ca9f1b62cacd7952803f0d5f0838291c3
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
