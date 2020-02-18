kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/3.34/gnome-backgrounds-3.34.0.tar.xz
  ref: c2b7fb6db98c05e205053daaa7f58c7f06ff91b45c4006052af17c578ae7b47f
depends:
- sdk/glib.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
