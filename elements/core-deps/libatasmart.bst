depends:
- filename: vm/linux-vm-boot/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 61f0ea345f63d28ab2ff0dc352c22271661b66bf09642db3a4049ac9dbdb0f8d
  url: http://0pointer.de/public/libatasmart-0.19.tar.xz
variables:
  conf-aux: build-aux
