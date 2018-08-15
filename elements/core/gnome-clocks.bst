depends:
- core-deps/geoclue.bst
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/gtk+-3.bst
- core-deps/libgweather.bst
- core-deps/vala.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: d48e0bd0479b575adfc7beaa7cd9088258ee27142ab6305915a92cc8761aa7b5
  url: https://download.gnome.org/sources/gnome-clocks/3.28/gnome-clocks-3.28.0.tar.xz
