kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-control-center
  track: master
depends:
- core-deps/ModemManager.bst
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/clutter-gtk.bst
- core-deps/colord-gtk.bst
- core-deps/colord.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/grilo.bst
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/ibus-anthy.bst
- core-deps/ibus-hangul.bst
- core-deps/ibus-libpinyin.bst
- core-deps/libgnomekbd.bst
- core-deps/libgtop.bst
- core-deps/libwacom.bst
- core-deps/pwquality.bst
- core-deps/samba.bst
- core-deps/upower.bst
- core/adwaita-icon-theme.bst
- core/cheese.bst
- core/gnome-bluetooth.bst
- core/gnome-color-manager.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- core/gsettings-desktop-schemas.bst
- core/network-manager-applet.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
