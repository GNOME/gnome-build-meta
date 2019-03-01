kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-bluetooth/3.28/gnome-bluetooth-3.28.2.tar.xz
  ref: 1f4961ac33b5f9ce5e6e01ea2c08ad29cc98ed2b8878e38da867235b28a50732
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- sdk/libcanberra.bst
- sdk/libnotify.bst
- filename: desktop/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
