kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-settings-daemon
  track: master
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
