kind: meson
sources:
- kind: tar
  url: http://www.freedesktop.org/software/libinput/libinput-1.11.902.tar.xz
  ref: 9e8a3a7f14b971f755fd08f17d01ae663632a18c362bd73af577a61664cb2f9b
depends:
- core-deps/libevdev.bst
- core-deps/libwacom.bst
- core-deps/mtdev.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Ddocumentation=false -Dtests=false
