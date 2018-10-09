kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libinput/libinput-1.12.1.tar.xz
depends:
- core-deps/libevdev.bst
- core-deps/libwacom.bst
- core-deps/mtdev.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Ddocumentation=false -Dtests=false
