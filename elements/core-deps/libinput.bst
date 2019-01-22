kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libinput/libinput-1.12.6.tar.xz
  ref: 12b4023a3fc683d3d8127db573bdf925a2ef366615042f69c87e57c32a50f45d
depends:
- core-deps/libevdev.bst
- core-deps/libwacom.bst
- core-deps/mtdev.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Ddocumentation=false -Dtests=false
