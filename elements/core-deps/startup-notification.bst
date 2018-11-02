kind: autotools
sources:
- kind: tar
  url: http://www.freedesktop.org/software/startup-notification/releases/startup-notification-0.12.tar.gz
depends:
- filename: desktop/xcb-util.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
