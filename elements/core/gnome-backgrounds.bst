kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/3.32/gnome-backgrounds-3.32.0.tar.xz
depends:
- sdk/glib.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
