kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-clocks/3.30/gnome-clocks-3.30.0.tar.xz
depends:
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/geoclue.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
