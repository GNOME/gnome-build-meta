kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/3.33/libgweather-3.33.0.tar.xz
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- filename: sdk/vala.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
