kind: meson
sources:
- kind: tar
  url: gnome_downloads:libchamplain/0.12/libchamplain-0.12.20.tar.xz
  ref: 0232b4bfcd130a1c5bda7b6aec266bf2d06e701e8093df1886f1e26bc1ba3066
depends:
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: sdk/vala.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
