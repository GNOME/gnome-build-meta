kind: cmake

sources:
- kind: tar
  url: https://pub.freerdp.com/releases/freerdp-2.2.0.tar.gz

  ref: 19b30759e324ce7a9767af880116a4c571761e9ad9c5d6c98c5b302ff8c24c6c
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
