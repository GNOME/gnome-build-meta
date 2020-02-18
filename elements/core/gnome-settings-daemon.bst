kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-settings-daemon/3.34/gnome-settings-daemon-3.34.2.tar.xz
  ref: 9fbae67e217e53b99e4f9e7d392c91ffbe31253941c9b136ef09c2d9db7ad7ed
depends:
- core-deps/ModemManager.bst
- core-deps/NetworkManager.bst
- core-deps/PackageKit.bst
- core-deps/colord.bst
- core-deps/geocode-glib.bst
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
- sdk/libcanberra.bst
- sdk/libnotify.bst
- filename: components/alsa-lib.bst
  junction: freedesktop-sdk.bst
- filename: components/cups.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xtst.bst
  junction: freedesktop-sdk.bst
- filename: components/perl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
