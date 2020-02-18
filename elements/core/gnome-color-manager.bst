kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-color-manager/3.32/gnome-color-manager-3.32.0.tar.xz
  ref: 7c3c178faacfcbf11d56de22cd265946a7d58aa10e3cd968c2938e2fbf50fdee
depends:
- core-deps/colord-gtk.bst
- core-deps/exiv2.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/vte.bst
- filename: components/libexif.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
