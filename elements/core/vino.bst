kind: autotools
sources:
- kind: git
  url: git_gnome_org:vino
  track: master
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
