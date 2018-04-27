kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-settings-daemon
  track: master
depends:
- core-deps/NetworkManager.bst
- core-deps/PackageKit.bst
- core-deps/colord.bst
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/libgudev.bst
- core-deps/libgweather.bst
- sdk/libnotify.bst
- sdk/librsvg.bst
- sdk/libwacom.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- base.bst
