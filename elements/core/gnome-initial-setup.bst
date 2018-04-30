kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-initial-setup
  track: master
depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/libgweather.bst
- core-deps/pwquality.bst
- core-deps/upower.bst
- core/gdm.bst
- core/gnome-desktop.bst
- core/gnome-getting-started-docs.bst
- core/gnome-keyring.bst
- core/network-manager-applet.bst
- sdk/WebKitGTK+.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- base.bst
