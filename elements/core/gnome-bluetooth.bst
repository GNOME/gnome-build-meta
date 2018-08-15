depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtk-doc.bst
- core-deps/libcanberra.bst
- core-deps/libnotify.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: 1f4961ac33b5f9ce5e6e01ea2c08ad29cc98ed2b8878e38da867235b28a50732
  url: https://download.gnome.org/sources/gnome-bluetooth/3.28/gnome-bluetooth-3.28.2.tar.xz
