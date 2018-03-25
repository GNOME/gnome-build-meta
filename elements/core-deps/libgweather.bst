kind: meson
sources:
- kind: git
  url: git_gnome_org:libgweather
  track: master
depends:
- core-deps/geocode-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libsoup.bst
- base.bst
