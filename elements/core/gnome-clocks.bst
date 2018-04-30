kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-clocks
  track: master
depends:
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- base.bst
