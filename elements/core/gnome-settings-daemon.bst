kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-settings-daemon/3.36/gnome-settings-daemon-3.36.1.tar.xz
  ref: 3e33dbd319b562a5ab602dcab6de3ca81b85f8346672e90ec632b36bbf15ee4b
build-depends:
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/ModemManager.bst
- core-deps/NetworkManager.bst
- core-deps/colord.bst
- core-deps/geocode-glib.bst
- core-deps/libcanberra.bst
- core-deps/libgudev.bst
- core-deps/libgweather.bst
- core-deps/libwacom.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- sdk/gcr.bst
- sdk/geoclue.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/ibus.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- freedesktop-sdk.bst:bootstrap-import.bst
