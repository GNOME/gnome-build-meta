kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/vino/3.22/vino-3.22.0.tar.xz
  ref: 2911c779b6a2c46e5bc8e5a0c94c2a4d5bd4a1ee7e35f2818702cb13d9d23bab
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
