kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-clocks
  track: master
depends:
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- sdk/gtk+-3.bst
- core-deps/libgweather.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- sdk/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- base.bst
