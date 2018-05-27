kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-clocks
  track: master
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
