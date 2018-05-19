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
- filename: base.bst
  junction: freedesktop-sdk.bst
