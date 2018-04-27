kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-control-center
  track: master
depends:
- core-deps/ModemManager.bst
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- sdk/clutter-gtk.bst
- core-deps/colord-gtk.bst
- core-deps/colord.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- core-deps/grilo.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- core-deps/ibus-anthy.bst
- core-deps/ibus-hangul.bst
- core-deps/ibus-libpinyin.bst
- core-deps/libgnomekbd.bst
- core-deps/libgtop.bst
- sdk/libwacom.bst
- core-deps/pwquality.bst
- sdk/samba.bst
- core-deps/upower.bst
- sdk/adwaita-icon-theme.bst
- core/cheese.bst
- core/gnome-bluetooth.bst
- core/gnome-color-manager.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- sdk/gsettings-desktop-schemas.bst
- core/network-manager-applet.bst
- base.bst
