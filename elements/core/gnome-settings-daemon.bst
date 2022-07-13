kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-settings-daemon/43/gnome-settings-daemon-43.alpha.tar.xz
  ref: 4a529a82627a6897e18315b586dafb90a2c142fa6210b44091ca7c79557d38d3
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
- sdk/gcr-3.bst
- sdk/geoclue.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libwacom.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- freedesktop-sdk.bst:bootstrap-import.bst
