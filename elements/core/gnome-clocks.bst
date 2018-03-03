kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-clocks
  track: master
depends:
- core-deps/geoclue.bst
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/gtk+-3.bst
- core-deps/libgweather.bst
- core-deps/meson.bst
- core-deps/vala.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- base.bst
