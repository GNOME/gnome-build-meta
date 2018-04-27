kind: autotools
sources:
- kind: tar
  url: http://0pointer.de/public/libatasmart-0.19.tar.xz
depends:
- filename: vm/linux-vm-boot/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
