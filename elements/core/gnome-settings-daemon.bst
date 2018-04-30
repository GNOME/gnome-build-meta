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
- core-deps/libgweather.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/libgudev.bst
- sdk/libnotify.bst
- sdk/librsvg.bst
- sdk/libwacom.bst
- base.bst
