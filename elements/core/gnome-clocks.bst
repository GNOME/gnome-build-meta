kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-clocks/3.28/gnome-clocks-3.28.0.tar.xz
  ref: d48e0bd0479b575adfc7beaa7cd9088258ee27142ab6305915a92cc8761aa7b5
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
