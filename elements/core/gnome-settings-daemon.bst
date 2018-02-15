kind: meson
sources:
- url: https://download.gnome.org/sources/gnome-settings-daemon/3.27/gnome-settings-daemon-3.27.90.tar.xz
  kind: tar
  ref: 4d3d17035aacc5d3646ac4c7e65551a0e6c687e2130a49aa6c37df3e4c5d10bf
depends:
- core-deps/NetworkManager.bst
- core-deps/PackageKit.bst
- core-deps/colord.bst
- core-deps/geoclue.bst
- core-deps/geocode-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/ibus.bst
- core-deps/libgudev.bst
- core-deps/libgweather.bst
- core-deps/libnotify.bst
- core-deps/librsvg.bst
- core-deps/libwacom.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- base.bst
