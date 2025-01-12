kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-settings-daemon/48/gnome-settings-daemon-48.alpha.1.tar.xz
  ref: a47331f84d1c721596e06d93e36d312419a4f8bf5c03d3ff4899b0719e2861fc
build-depends:
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/ModemManager.bst
- core-deps/NetworkManager.bst
- core-deps/colord.bst
- core-deps/cups-pk-helper.bst
- core-deps/geocode-glib.bst
- core-deps/ibus-daemon.bst
- core-deps/libcanberra.bst
- core-deps/libgweather.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libwacom.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- freedesktop-sdk.bst:bootstrap-import.bst
