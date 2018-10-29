kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libinput/libinput-1.12.2.tar.xz
  ref: 15ac2b78ec0b502c14400d711dbd6b9164a43a724cedeaf21c7fa29960e701a4
depends:
- core-deps/libevdev.bst
- core-deps/libwacom.bst
- core-deps/mtdev.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Ddocumentation=false -Dtests=false
