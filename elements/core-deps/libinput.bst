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
  url: https://www.freedesktop.org/software/libinput/libinput-1.19.3.tar.xz
  ref: 3cae78ccde19d7d0f387e58bc734d4d17ab5f6426f54a9e8b728c90b17baa068
