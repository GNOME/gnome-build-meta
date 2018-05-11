kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-settings-daemon/3.28/gnome-settings-daemon-3.28.1.tar.xz
  ref: 594f78e194eb42a6f77785d1a92a4cb9cda54b8c3af6ca0c315b4570d38d2d7d
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
