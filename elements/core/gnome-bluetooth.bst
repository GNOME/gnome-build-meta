kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-bluetooth/3.28/gnome-bluetooth-3.28.2.tar.xz
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libcanberra.bst
- sdk/libnotify.bst
- filename: vm/linux-vm-boot/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
