kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-initial-setup/3.29/gnome-initial-setup-3.29.92.tar.xz
  ref: 6e865cfee270391946e8e5ba3d0ef81d1e8c648562e5a9462fb48c85f9119da4
depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/gnome-online-accounts.bst
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
- sdk/geoclue.bst
- sdk/glib.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
