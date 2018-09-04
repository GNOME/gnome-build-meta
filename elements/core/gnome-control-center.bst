kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-control-center/3.30/gnome-control-center-3.30.0.tar.xz
  ref: 01fccc50b12e2d5906a3dc21f2009f5663360c9666f17bfd7c8a301fe730afe5
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
- core-deps/ibus-libpinyin.bst
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
