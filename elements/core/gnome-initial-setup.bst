kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-initial-setup/43/gnome-initial-setup-43.2.tar.xz
  ref: 23d7963a54d49594504d0eacd85096cafb5f86f1e74a58e040675b6e798ae698
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/geocode-glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/ibus-daemon.bst
- core-deps/libgweather.bst
- core-deps/libnma.bst
- core-deps/librest.bst
- core-deps/malcontent.bst
- core-deps/upower.bst
- core/gdm.bst
- core/gnome-desktop.bst
- core/gnome-keyring.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/webkit2gtk-5.0.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dparental_controls=enabled
