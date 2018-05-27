kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgweather
  track: master
depends:
- core-deps/geocode-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
