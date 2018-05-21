kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgweather
  track: master
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
