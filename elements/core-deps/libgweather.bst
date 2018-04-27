kind: meson
sources:
- kind: git
  url: git_gnome_org:libgweather
  track: master
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- base.bst
