kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-settings-daemon
  track: master
depends:
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
- core/NetworkManager.bst
- core/PackageKit.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- core/upower.bst
- base.bst
