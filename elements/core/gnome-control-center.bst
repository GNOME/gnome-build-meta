kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-control-center/3.30/gnome-control-center-3.30.2.tar.xz
  ref: a1e82b40ab59870697f739eb946f142b01ca66232e13af6ed5a95df22cc8c466
depends:
- core-deps/ModemManager.bst
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/colord-gtk.bst
- core-deps/colord.bst
- core-deps/gnome-online-accounts.bst
- core-deps/grilo.bst
- core-deps/ibus-anthy.bst
- core-deps/ibus-hangul.bst
# - core-deps/ibus-libpinyin.bst     Its just not building
- core-deps/libgnomekbd.bst
- core-deps/libgtop.bst
- core-deps/libwacom.bst
- core-deps/pwquality.bst
- core-deps/samba.bst
- core-deps/upower.bst
- core/cheese.bst
- core/gnome-bluetooth.bst
- core/gnome-color-manager.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- core/network-manager-applet.bst
- sdk/adwaita-icon-theme.bst
- sdk/clutter-gtk.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
