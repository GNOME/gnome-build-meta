kind: meson
sources:
- kind: tar
  url: http://www.freedesktop.org/software/libinput/libinput-1.11.903.tar.xz
  ref: 8eb201d0ba6e273f75cc3a4b90f9204498deead82fae24c8649f56437cd91a8a
depends:
- core-deps/libevdev.bst
- core-deps/libwacom.bst
- core-deps/mtdev.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Ddocumentation=false -Dtests=false
