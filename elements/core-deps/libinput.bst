depends:
- core-deps/gtk+-3.bst
- core-deps/libevdev.bst
- core-deps/libwacom.bst
- core-deps/mtdev.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: 9e8a3a7f14b971f755fd08f17d01ae663632a18c362bd73af577a61664cb2f9b
  url: http://www.freedesktop.org/software/libinput/libinput-1.11.902.tar.xz
variables:
  meson-local: -Ddocumentation=false -Dtests=false
