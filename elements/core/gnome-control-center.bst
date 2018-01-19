kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-control-center
  track: master
depends:
- core-deps/ModemManager.bst
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
- core-deps/ibus.bst
- core-deps/iso-codes.bst
- core-deps/libgnomekbd.bst
- core-deps/libgtop.bst
- core-deps/libwacom.bst
- core-deps/sound-theme-freedesktop.bst
- core/NetworkManager.bst
- core/accountsservice.bst
- core/cheese.bst
- core/gnome-bluetooth.bst
- core/gnome-color-manager.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- core/gsettings-desktop-schemas.bst
- core/network-manager-applet.bst
- core/upower.bst
- base.bst
