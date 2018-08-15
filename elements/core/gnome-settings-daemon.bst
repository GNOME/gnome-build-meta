depends:
- core-deps/NetworkManager.bst
- core-deps/PackageKit.bst
- core-deps/colord.bst
- core-deps/geoclue.bst
- core-deps/geocode-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/ibus.bst
- core-deps/libcanberra.bst
- core-deps/libgudev.bst
- core-deps/libgweather.bst
- core-deps/libnotify.bst
- core-deps/librsvg.bst
- core-deps/libwacom.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- filename: desktop/alsa-lib.bst
  junction: freedesktop-sdk.bst
- filename: desktop/cups.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xtst.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: 833dc913639f5d9b19e962c36be748e30d8844ebcc0e16f1e42db54e76d1eb18
  url: https://download.gnome.org/sources/gnome-settings-daemon/3.29/gnome-settings-daemon-3.29.90.1.tar.xz
