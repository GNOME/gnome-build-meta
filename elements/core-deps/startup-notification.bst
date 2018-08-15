depends:
- filename: desktop/xcb-util.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 3c391f7e930c583095045cd2d10eb73a64f085c7fde9d260f2652c7cb3cfbe4a
  url: http://www.freedesktop.org/software/startup-notification/releases/startup-notification-0.12.tar.gz
