depends:
- core-deps/gtk+-3.bst
- filename: desktop/libpulse.bst
  junction: freedesktop-sdk.bst
- filename: vm/linux-vm-boot/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: c2b671e67e0c288a69fc33dc1b6f1b534d07882c2aceed37004bf48c601afa72
  url: http://0pointer.de/lennart/projects/libcanberra/libcanberra-0.30.tar.xz
variables:
  conf-aux: build-aux
