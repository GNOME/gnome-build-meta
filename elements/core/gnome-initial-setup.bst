kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-initial-setup/3.34/gnome-initial-setup-3.34.3.tar.xz
  ref: 33f9ceb2d65800644c6d6430bbb1d0f4387a062684014cba836d9fbc593d88b5
depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libgweather.bst
- core-deps/upower.bst
- core/gdm.bst
- core/gnome-desktop.bst
- core/gnome-getting-started-docs.bst
- core/gnome-keyring.bst
- core/network-manager-applet.bst
- sdk/WebKitGTK.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/ibus.bst
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: components/pwquality.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dcheese=disabled -Dsoftware-sources=disabled
