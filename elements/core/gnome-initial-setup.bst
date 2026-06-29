kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-initial-setup/51/gnome-initial-setup-51.alpha.tar.xz
  ref: 664528a015320c32c18bb0f66194b0f9756289513accd9800ee862e39a9a03e2
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

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
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/webkitgtk-6.0.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dparental_controls=enabled
