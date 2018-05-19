kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-bluetooth
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- sdk/libcanberra.bst
- sdk/libnotify.bst
- filename: vm/linux-vm-boot/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
