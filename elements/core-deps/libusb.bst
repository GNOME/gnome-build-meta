depends:
- filename: vm/linux-vm-boot/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 7dce9cce9a81194b7065ee912bcd55eeffebab694ea403ffb91b67db66b1824b
  url: github_com:libusb/libusb/releases/download/v1.0.21/libusb-1.0.21.tar.bz2
