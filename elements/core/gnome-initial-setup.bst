kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-initial-setup/51/gnome-initial-setup-51.1.tar.xz
  ref: 5883085d341b2ecff6e01cc7cb1ad42f2f3d2cff4c43144b47542c806fd6e682
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- core-deps/NetworkManager.bst
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
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/webkitgtk-6.0.bst
- freedesktop-sdk-extra.bst:components/accountsservice.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dparental_controls=enabled
