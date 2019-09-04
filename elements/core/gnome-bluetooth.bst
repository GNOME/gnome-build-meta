kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-bluetooth/3.33/gnome-bluetooth-3.33.90.tar.xz
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libcanberra.bst
- sdk/libnotify.bst
- filename: components/systemd.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
