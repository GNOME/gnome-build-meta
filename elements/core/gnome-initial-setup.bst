kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-initial-setup
  track: master
depends:
- core-deps/NetworkManager.bst
- core-deps/WebKitGTK+.bst
- core-deps/accountsservice.bst
- core-deps/geoclue.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/iso-codes.bst
- core-deps/libgweather.bst
- core-deps/pwquality.bst
- core-deps/upower.bst
- core/adwaita-icon-theme.bst
- core/gdm.bst
- core/gnome-desktop.bst
- core/gnome-getting-started-docs.bst
- core/gnome-keyring.bst
- core/network-manager-applet.bst
- base.bst
