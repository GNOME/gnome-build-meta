kind: meson
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/doxygen.bst

depends:
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/mtdev.bst
- freedesktop-sdk.bst:components/libevdev.bst
- freedesktop-sdk.bst:components/libwacom.bst

variables:
  meson-local: >-
    -Ddebug-gui=false
    -Ddocumentation=false
    -Dtests=false
    -Dzshcompletiondir=no
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libinput/libinput-1.19.0.tar.xz
  ref: 3d3a2f12b4a65cd82684121ae4b33cdc3ad541c761a55e8eb73a8e5e443cccbb
