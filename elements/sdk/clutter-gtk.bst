kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/clutter-gtk/1.8/clutter-gtk-1.8.4.tar.xz
depends:
- sdk/clutter.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
