kind: autotools
sources:
- kind: tar
  url: http://0pointer.de/lennart/projects/libcanberra/libcanberra-0.30.tar.xz
depends:
- core-deps/gtk+-3.bst
- filename: desktop/pulseaudio.bst
  junction: freedesktop-sdk.bst
- filename: vm/linux-vm-boot/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
