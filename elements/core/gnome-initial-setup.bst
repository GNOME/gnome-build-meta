kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-initial-setup/3.30/gnome-initial-setup-3.30.0.tar.xz
  ref: 53cad86ce408766f0d2295cfdaf55ac9b98d7d66c66f7beeac43e2e395656951
depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libgweather.bst
- core-deps/pwquality.bst
- core-deps/upower.bst
- filename: core-deps/meson-0-47.bst
  type: build
- core/gdm.bst
- core/gnome-desktop.bst
- core/gnome-getting-started-docs.bst
- core/gnome-keyring.bst
- core/network-manager-applet.bst
- sdk/WebKitGTK+.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/ibus.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: |
    -Dcheese=disabled \
    -Dsoftware-sources=disabled
