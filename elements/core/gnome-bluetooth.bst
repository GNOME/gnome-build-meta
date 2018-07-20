kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-bluetooth/3.28/gnome-bluetooth-3.28.1.tar.xz
  ref: 5633a99b50770de398ebdc580c8f502c7315d9634638db73611b8b740ace7ebc
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtk-doc.bst
- core-deps/libcanberra.bst
- core-deps/libnotify.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
