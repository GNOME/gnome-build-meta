kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-settings-daemon
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
- core-deps/meson.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- base.bst
