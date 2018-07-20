kind: meson
sources:
- kind: tar
  url: http://www.freedesktop.org/software/libinput/libinput-1.11.2.tar.xz
  ref: 6b36e1163d306c292ec8359b35aa65431cd29d0a5254923775e8019ff5018107
depends:
- core-deps/gtk+-3.bst
- core-deps/libevdev.bst
- core-deps/libwacom.bst
- core-deps/mtdev.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Ddocumentation=false -Dtests=false
