kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-initial-setup
  track: master
depends:
- core-deps/NetworkManager.bst
- sdk/WebKitGTK+.bst
- core-deps/accountsservice.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- core-deps/libgweather.bst
- core-deps/pwquality.bst
- core-deps/upower.bst
- sdk/adwaita-icon-theme.bst
- core/gdm.bst
- core/gnome-desktop.bst
- core/gnome-getting-started-docs.bst
- core/gnome-keyring.bst
- core/network-manager-applet.bst
- base.bst
