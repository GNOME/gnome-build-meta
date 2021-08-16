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
  url: https://www.freedesktop.org/software/libinput/libinput-1.18.1.tar.xz
  ref: 9ca14021fbc2523bc0610582c51f368321592040b6ca63becc2fa1ea11f1a7cb
