kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-backgrounds/3.31/gnome-backgrounds-3.31.91.tar.xz
depends:
- sdk/glib.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
