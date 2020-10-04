kind: meson
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libinput/libinput-1.16.2.tar.xz
  ref: fc3d8c50fe7abc4dc4406bc01262a3f8149864557f87279adcf300e523c160a9
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libevdev.bst
- core-deps/libwacom.bst
- core-deps/mtdev.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddocumentation=false
    -Dtests=false
