kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/3.32/gnome-backgrounds-3.32.0.tar.xz
depends:
- sdk/glib.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
