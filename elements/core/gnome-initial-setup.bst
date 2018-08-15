depends:
- core-deps/NetworkManager.bst
- core-deps/WebKitGTK+.bst
- core-deps/accountsservice.bst
- core-deps/geoclue.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/libgweather.bst
- core-deps/pwquality.bst
- core-deps/upower.bst
- core/adwaita-icon-theme.bst
- core/gdm.bst
- core/gnome-desktop.bst
- core/gnome-getting-started-docs.bst
- core/gnome-keyring.bst
- core/network-manager-applet.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: 44dd7b21d2b4973563aa43fc5b710d5e1d293721e993351a5a7427556070861c
  url: https://download.gnome.org/sources/gnome-initial-setup/3.29/gnome-initial-setup-3.29.1.tar.xz
