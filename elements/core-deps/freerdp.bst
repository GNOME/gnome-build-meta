kind: cmake

sources:
- kind: tar
  url: freerdp:releases/freerdp-2.8.1.tar.gz

  ref: ea8903b29914134202a972c06052432678c89cb5eebcc8f5a41553030c97376b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DWITH_SERVER=ON
    -DWITH_CHANNELS=ON
    -DWITH_SERVER_CHANNELS=ON
    -DWITH_CLIENT_CHANNELS=ON
    -DWITH_ALSA=OFF
    -DWITH_PCSC=OFF
    -DWITH_X11=OFF
