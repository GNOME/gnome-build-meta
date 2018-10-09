kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vino/3.22/vino-3.22.0.tar.xz
depends:
- core-deps/NetworkManager.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- filename: desktop/xorg-lib-ice.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-sm.bst
  junction: freedesktop-sdk.bst
- filename: vm/linux-vm-boot/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
