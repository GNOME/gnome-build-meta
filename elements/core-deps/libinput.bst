kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libinput/libinput-1.12.6.tar.xz
  ref: f266ff861a2e7a97e1402c4345e3547b900efde68adbd40e56403e2617fee255
depends:
- core-deps/libevdev.bst
- core-deps/libwacom.bst
- core-deps/mtdev.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Ddocumentation=false -Dtests=false
