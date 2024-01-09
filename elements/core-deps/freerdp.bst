kind: cmake

sources:
- kind: tar
  url: freerdp:releases/freerdp-2.11.4.tar.gz
  ref: 2534e5bc53e3fd1b55611c0753a7c2b73242da33f058771cbf053e4f77483146
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
