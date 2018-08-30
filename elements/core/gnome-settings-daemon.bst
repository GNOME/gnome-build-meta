kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-settings-daemon/3.29/gnome-settings-daemon-3.29.92.tar.xz
  ref: e88953bc4a5eb581bd9935fe324ae1f27bf0052d3d3696c4705e3110fa82a693
depends:
- core-deps/NetworkManager.bst
- core-deps/PackageKit.bst
- core-deps/colord.bst
- core-deps/geocode-glib.bst
- core-deps/libgudev.bst
- core-deps/libgweather.bst
- core-deps/libwacom.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- sdk/geoclue.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/ibus.bst
- sdk/libcanberra.bst
- sdk/libnotify.bst
- sdk/librsvg.bst
- filename: desktop/alsa-lib.bst
  junction: freedesktop-sdk.bst
- filename: desktop/cups.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xtst.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
