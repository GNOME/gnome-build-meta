kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-disk-utility/3.30/gnome-disk-utility-3.30.1.tar.xz
  ref: 1477e9698db45a096145aca31ed55d0f76cff4419fb490f3ff9aa7a1d7a210fb
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
