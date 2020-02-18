kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-screenshot/3.34/gnome-screenshot-3.34.0.tar.xz
  ref: c80af5f7a2bed4348585eb18dc4e60af5beba4f13d8ccf6ab1ee1d0912c2b1e6
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
