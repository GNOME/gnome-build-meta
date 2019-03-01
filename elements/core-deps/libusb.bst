kind: autotools
sources:
- kind: tar
  url: github_com:libusb/libusb/releases/download/v1.0.21/libusb-1.0.21.tar.bz2
depends:
- filename: desktop/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
