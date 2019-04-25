kind: meson
sources:
- kind: tar
  url: gnome_downloads:clutter-gtk/1.8/clutter-gtk-1.8.4.tar.xz
depends:
- sdk/clutter.bst
- sdk/gtk+-3.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
